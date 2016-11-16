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
	.hword 0xfd13
@ 2e

Script_1: @ 2e
	LockAll
	ApplyMovement 0x6, Movement_140
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_174
	WaitMovement
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_138
	WaitMovement
	ApplyMovement 0x6, Movement_14c
	WaitMovement
	Message 0x2
	SetVarHero 0x0
	Message 0x3
	Message 0x4
	SetVar 0x8004, 0x31
	SetVar 0x8005, 0x1
	CallStandard 0x7ff
	Message 0x5
	ApplyMovement 0x6, Movement_158
	ApplyMovement 0x5, Movement_17c
	WaitMovement
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_160
	ApplyMovement 0xff, Movement_1dc
	WaitMovement
	RemovePeople 0x6
	SetVar 0x40f7, 0x1
	ApplyMovement 0x5, Movement_190
	ApplyMovement 0xff, Movement_1e4
	WaitMovement
	SetVarHero 0x0
	Message 0x7
	CloseMsgOnKeyPress
	Soundfr 0x486
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ee
	Jump Script_branch_f9
@ ec

.byte 0x2 @ 0xec
.byte 0x0 @ 0xed

Script_branch_ee: @ ee
	Message 0x8
	Jump Script_branch_104
@ f7

.byte 0x2 @ 0xf7
.byte 0x0 @ 0xf8

Script_branch_f9: @ f9
	Message 0x9
	Jump Script_branch_104
@ 102

.byte 0x2 @ 0x102
.byte 0x0 @ 0x103

Script_branch_104: @ 104
	Cmd_4f
	Message 0xa
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0xff, Movement_1c8
	ApplyMovement 0x5, Movement_1b0
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x5
	WaitFanfare 0x603
	SetFlag 0x978
	ReleaseAll
	End
@ 137

.byte 0x0 @ 0x137

Movement_138: @ 138
	WalkUpFast 0x2
	EndMovement 0x0
@ 140

Movement_140: @ 140
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	MoveLeftVeryFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 158

Movement_158: @ 158
	MoveLeftFast 0x1
	EndMovement 0x0
@ 160

Movement_160: @ 160
	WalkRightFast 0x3
	WalkUpFast 0x3
	WalkRightFast 0x3
	WalkUpFast 0x6
	EndMovement 0x0
@ 174

Movement_174: @ 174
	MoveDownFast 0x1
	EndMovement 0x0
@ 17c

Movement_17c: @ 17c
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 188

.byte 0x23 @ 0x188
.byte 0x0 @ 0x189
.byte 0x1 @ 0x18a
.byte 0x0 @ 0x18b
.byte 0xfe @ 0x18c
.byte 0x0 @ 0x18d
.byte 0x0 @ 0x18e
.byte 0x0 @ 0x18f

Movement_190: @ 190
	MoveDownFast 0x1
	EndMovement 0x0
@ 198

.byte 0xe @ 0x198
.byte 0x0 @ 0x199
.byte 0x8 @ 0x19a
.byte 0x0 @ 0x19b
.byte 0xfe @ 0x19c
.byte 0x0 @ 0x19d
.byte 0x0 @ 0x19e
.byte 0x0 @ 0x19f
.byte 0xc @ 0x1a0
.byte 0x0 @ 0x1a1
.byte 0x6 @ 0x1a2
.byte 0x0 @ 0x1a3
.byte 0xfe @ 0x1a4
.byte 0x0 @ 0x1a5
.byte 0x0 @ 0x1a6
.byte 0x0 @ 0x1a7
.byte 0xf @ 0x1a8
.byte 0x0 @ 0x1a9
.byte 0x8 @ 0x1aa
.byte 0x0 @ 0x1ab
.byte 0xfe @ 0x1ac
.byte 0x0 @ 0x1ad
.byte 0x0 @ 0x1ae
.byte 0x0 @ 0x1af

Movement_1b0: @ 1b0
	WalkLeftFast 0x1
	WalkDownFast 0x2
	WalkRightFast 0x1
	WalkDownFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 1c8

Movement_1c8: @ 1c8
	Move_3e 0x1
	MoveLeftFast 0x1
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 1dc

Movement_1dc: @ 1dc
	MoveRightFast 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	MoveUpFast 0x1
	EndMovement 0x0
@ 1ec

Script_2: @ 1ec
	PlayFanfare 0x5dc
	LockAll
	CheckContestWin 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31d
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayContestPokemon 0x0, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 229

Script_3: @ 229
	PlayFanfare 0x5dc
	LockAll
	CheckContestWin 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31d
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayContestPokemon 0x1, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 266

Script_4: @ 266
	PlayFanfare 0x5dc
	LockAll
	CheckContestWin 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31d
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayContestPokemon 0x2, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 2a3

Script_5: @ 2a3
	PlayFanfare 0x5dc
	LockAll
	CheckContestWin 0x3, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31d
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayContestPokemon 0x3, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 2e0

Script_6: @ 2e0
	PlayFanfare 0x5dc
	LockAll
	CheckContestWin 0x4, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31d
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayContestPokemon 0x4, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 31d

Script_branch_31d: @ 31d
	Message 0x18
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 328

Script_7: @ 328
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33b

Script_8: @ 33b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34e

Script_9: @ 34e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 361

Script_10: @ 361
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x159
	CompareLastResultJump LESSER, Script_branch_3d3
	CheckFlag 0x15a
	CompareLastResultJump LESSER, Script_branch_38a
Script_branch_37f: @ 37f
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 38a

Script_branch_38a: @ 38a
	CheckItem 0x1c1, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_37f
	Message 0xd
	CheckPoffinCaseStatus 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3c8
	Call Function_437
	SetFlag 0x15a
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3c8

Script_branch_3c8: @ 3c8
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d3

Script_branch_3d3: @ 3d3
	SetFlag 0x159
	CheckItem 0x1c1, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_428
	Message 0xd
	CheckPoffinCaseStatus 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_419
	Call Function_437
	SetFlag 0x15a
	Message 0x10
	CloseMsgOnKeyPress
	Call Function_458
	ReleaseAll
	End
@ 419

Script_branch_419: @ 419
	Message 0x14
	CloseMsgOnKeyPress
	Call Function_458
	ReleaseAll
	End
@ 428

Script_branch_428: @ 428
	Message 0xc
	CloseMsgOnKeyPress
	Call Function_458
	ReleaseAll
	End
@ 437

Function_437: @ 437
	CheckPoffinItem 0x800c, 0x3c, 0x1e, 0x1e, 0x1e, 0x1e, 0x28
	Soundfr 0x486
	SetVarHero 0x0
	Message 0xe
	Cmd_4f
	Message 0xf
	Return
@ 458

Function_458: @ 458
	CheckFacePosition 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_475
	ApplyMovement 0x9, Movement_484
	WaitMovement
	Return
@ 475

Script_branch_475: @ 475
	ApplyMovement 0x9, Movement_490
	WaitMovement
	Return
@ 481

.byte 0x0 @ 0x481
.byte 0x0 @ 0x482
.byte 0x0 @ 0x483

Movement_484: @ 484
	WalkRightFast 0x8
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 490

Movement_490: @ 490
	WalkDownFast 0x1
	WalkRightFast 0x8
	WalkUpFast 0x1
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 4a4

Script_11: @ 4a4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Return2 0x1e, 0x800c
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52b
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_53d
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_54f
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_561
	End
@ 4ec

Script_branch_4ec: @ 4ec
	Message 0xb
	CloseMsgOnKeyPress
	CheckFacePosition 0x8004
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_573
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_58d
	If 0x8004, 0x2
	CompareLastResultJump EQUAL, Script_branch_5a7
	If 0x8004, 0x3
	CompareLastResultJump EQUAL, Script_branch_5b9
	End
@ 52b

Script_branch_52b: @ 52b
	ApplyMovement 0xa, Movement_624
	WaitMovement
	Jump Script_branch_4ec
@ 53b

.byte 0x2 @ 0x53b
.byte 0x0 @ 0x53c

Script_branch_53d: @ 53d
	ApplyMovement 0xa, Movement_638
	WaitMovement
	Jump Script_branch_4ec
@ 54d

.byte 0x2 @ 0x54d
.byte 0x0 @ 0x54e

Script_branch_54f: @ 54f
	ApplyMovement 0xa, Movement_64c
	WaitMovement
	Jump Script_branch_4ec
@ 55f

.byte 0x2 @ 0x55f
.byte 0x0 @ 0x560

Script_branch_561: @ 561
	ApplyMovement 0xa, Movement_660
	WaitMovement
	Jump Script_branch_4ec
@ 571

.byte 0x2 @ 0x571
.byte 0x0 @ 0x572

Script_branch_573: @ 573
	ApplyMovement 0xa, Movement_5e8
	ApplyMovement 0xff, Movement_604
	WaitMovement
	Jump Script_branch_5d3
@ 58b

.byte 0x2 @ 0x58b
.byte 0x0 @ 0x58c

Script_branch_58d: @ 58d
	ApplyMovement 0xa, Movement_5e8
	ApplyMovement 0xff, Movement_604
	WaitMovement
	Jump Script_branch_5d3
@ 5a5

.byte 0x2 @ 0x5a5
.byte 0x0 @ 0x5a6

Script_branch_5a7: @ 5a7
	ApplyMovement 0xa, Movement_5e8
	WaitMovement
	Jump Script_branch_5d3
@ 5b7

.byte 0x2 @ 0x5b7
.byte 0x0 @ 0x5b8

Script_branch_5b9: @ 5b9
	ApplyMovement 0xa, Movement_5f4
	ApplyMovement 0xff, Movement_610
	WaitMovement
	Jump Script_branch_5d3
@ 5d1

.byte 0x2 @ 0x5d1
.byte 0x0 @ 0x5d2

Script_branch_5d3: @ 5d3
	PlayFanfare 0x603
	RemovePeople 0xa
	WaitFanfare 0x603
	SetFlag 0x18d
	ReleaseAll
	End
@ 5e7

.byte 0x0 @ 0x5e7

Movement_5e8: @ 5e8
	WalkLeftFast 0x6
	WalkDownFast 0x4
	EndMovement 0x0
@ 5f4

Movement_5f4: @ 5f4
	WalkUpFast 0x1
	WalkLeftFast 0x6
	WalkDownFast 0x5
	EndMovement 0x0
@ 604

Movement_604: @ 604
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 610

Movement_610: @ 610
	Move_3f 0x2
	MoveUpFast 0x1
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 624

Movement_624: @ 624
	SeeLeft 0x4
	SeeUp 0x4
	SeeRight 0x4
	SeeDown 0x4
	EndMovement 0x0
@ 638

Movement_638: @ 638
	SeeRight 0x4
	SeeDown 0x4
	SeeLeft 0x4
	SeeUp 0x4
	EndMovement 0x0
@ 64c

Movement_64c: @ 64c
	SeeDown 0x4
	SeeLeft 0x4
	SeeUp 0x4
	SeeRight 0x4
	EndMovement 0x0
@ 660

Movement_660: @ 660
	SeeUp 0x4
	SeeRight 0x4
	SeeDown 0x4
	SeeLeft 0x4
	EndMovement 0x0
@ 674

@ end_0x674
