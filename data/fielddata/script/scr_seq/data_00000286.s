.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	CopyVar 0x4000, 0x409e
	If 0x409e, 0x1
	CompareLastResultCall 0x4, Script_branch_31
	Call Function_37
	End
@ 31

Script_branch_31: @ 31
	SetFlag 0x1db
	Return
@ 37

Function_37: @ 37
	CheckFlag 0x120
	CompareLastResultJump EQUAL, Script_branch_83
	Cmd_166 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_83
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_83
	CheckFlag 0x125
	CompareLastResultJump LESSER, Script_branch_83
	If 0x409e, 0x1
	CompareLastResultJump 0x5, Script_branch_83
	ClearFlag 0x1dd
	Return
@ 83

Script_branch_83: @ 83
	SetFlag 0x1dd
	Return
@ 89

Script_2: @ 89
	CheckFlag 0x8e
	CompareLastResultJump EQUAL, Script_branch_96
	End
@ 96

Script_branch_96: @ 96
	SetFlag 0x1dd
	RemovePeople 0x1
	ClearFlag 0x8e
	End
@ a4

.byte 0xe @ 0xa4
.byte 0x0 @ 0xa5
.byte 0x1 @ 0xa6
.byte 0x0 @ 0xa7
.byte 0x23 @ 0xa8
.byte 0x0 @ 0xa9
.byte 0x1 @ 0xaa
.byte 0x0 @ 0xab
.byte 0x21 @ 0xac
.byte 0x0 @ 0xad
.byte 0x1 @ 0xae
.byte 0x0 @ 0xaf
.byte 0xfe @ 0xb0
.byte 0x0 @ 0xb1
.byte 0x0 @ 0xb2
.byte 0x0 @ 0xb3

Movement_b4: @ b4
	MoveUpFast 0x1
	EndMovement 0x0
@ bc

.byte 0x20 @ 0xbc
.byte 0x0 @ 0xbd
.byte 0x1 @ 0xbe
.byte 0x0 @ 0xbf
.byte 0xfe @ 0xc0
.byte 0x0 @ 0xc1
.byte 0x0 @ 0xc2
.byte 0x0 @ 0xc3
.byte 0x3f @ 0xc4
.byte 0x0 @ 0xc5
.byte 0x1 @ 0xc6
.byte 0x0 @ 0xc7
.byte 0xd @ 0xc8
.byte 0x0 @ 0xc9
.byte 0x9 @ 0xca
.byte 0x0 @ 0xcb
.byte 0xfe @ 0xcc
.byte 0x0 @ 0xcd
.byte 0x0 @ 0xce
.byte 0x0 @ 0xcf

Script_3: @ d0
	SetVarHero 0x1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e6

Script_4: @ e6
	LockAll
	PlayFanfare 0x5dc
	WaitFanfare 0x5dc
	CheckFlag 0xd7
	CompareLastResultCall LESSER, Script_branch_174
	SetVar 0x409e, 0x2
	PlayCry 0x1e5, 0x0
	Message 0xf
	CloseMsgOnKeyPress
	SetFlag 0x8e
	WildBattle2 0x1e5, 0x32
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_168
	CheckTrainerStatus2 0x800c
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_17a
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_15d
	Jump Script_branch_155
@ 153

.byte 0x2 @ 0x153
.byte 0x0 @ 0x154

Script_branch_155: @ 155
	SetFlag 0x120
	ReleaseAll
	End
@ 15d

Script_branch_15d: @ 15d
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 168

Script_branch_168: @ 168
	SetVar 0x409e, 0x1
	LostGoPc
	ReleaseAll
	End
@ 174

Script_branch_174: @ 174
	SetFlag 0xd7
	Return
@ 17a

Script_branch_17a: @ 17a
	SetFlag 0x983
	Return
@ 180

.byte 0xc @ 0x180
.byte 0x0 @ 0x181
.byte 0x6 @ 0x182
.byte 0x0 @ 0x183
.byte 0xfe @ 0x184
.byte 0x0 @ 0x185
.byte 0x0 @ 0x186
.byte 0x0 @ 0x187
.byte 0xd @ 0x188
.byte 0x0 @ 0x189
.byte 0x6 @ 0x18a
.byte 0x0 @ 0x18b
.byte 0xfe @ 0x18c
.byte 0x0 @ 0x18d
.byte 0x0 @ 0x18e
.byte 0x0 @ 0x18f
.byte 0x3f @ 0x190
.byte 0x0 @ 0x191
.byte 0x4 @ 0x192
.byte 0x0 @ 0x193
.byte 0x21 @ 0x194
.byte 0x0 @ 0x195
.byte 0x1 @ 0x196
.byte 0x0 @ 0x197
.byte 0xfe @ 0x198
.byte 0x0 @ 0x199
.byte 0x0 @ 0x19a
.byte 0x0 @ 0x19b

Script_5: @ 19c
	LockAll
	Message 0x0
	CloseMsgOnKeyPress
	WaitFanfare 0x5dc
	PlayFanfare 0x65c
	CameraBumpEffect 0x0
	PlayFanfare2 0x65c
	ApplyMovement 0x2, Movement_3a4
	ApplyMovement 0xff, Movement_388
	WaitMovement
	ApplyMovement 0x2, Movement_b4
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_3b0
	WaitMovement
	RemovePeople 0x3
	Message 0x2
	Message 0x3
	PlayCry 0x1c5, 0x0
	WaitCry
	CloseMsgOnKeyPress
	ClearFlag 0x232
	AddPeople 0x0
	ApplyMovement 0x0, Movement_490
	WaitMovement
	ApplyMovement 0x5, Movement_3c0
	ApplyMovement 0x9, Movement_434
	ApplyMovement 0xa, Movement_43c
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	Message 0x5
	CloseMsgOnKeyPress
	RemovePeople 0x0
	RemovePeople 0x6
	ClearFlag 0x231
	AddPeople 0x4
	CallStandard 0x807
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_4a8
	ApplyMovement 0x9, Movement_408
	ApplyMovement 0xa, Movement_418
	WaitMovement
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x9, Movement_444
	WaitMovement
	Message 0x8
	ApplyMovement 0xa, Movement_44c
	WaitMovement
	Message 0x9
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x9, Movement_454
	ApplyMovement 0xa, Movement_45c
	WaitMovement
	Message 0xa
	CloseMsgOnKeyPress
	ApplyMovement 0x9, Movement_464
	ApplyMovement 0xa, Movement_47c
	ApplyMovement 0xff, Movement_390
	WaitMovement
	ApplyMovement 0x5, Movement_3d8
	WaitMovement
	Message 0xb
	Message 0xc
	CloseMsgOnKeyPress
	ClearFlag 0x230
	AddPeople 0x7
	ApplyMovement 0x7, Movement_4c8
	WaitMovement
	AddPeople 0x8
	ApplyMovement 0x8, Movement_4fc
	WaitMovement
	Message 0xd
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_3e0
	ApplyMovement 0x4, Movement_4b4
	WaitMovement
	ApplyMovement 0x5, Movement_3ec
	ApplyMovement 0x7, Movement_4e0
	ApplyMovement 0x8, Movement_510
	WaitMovement
	RemovePeople 0x5
	RemovePeople 0x7
	RemovePeople 0x8
	SetVarHero 0x0
	Message 0xe
	CloseMsgOnKeyPress
	SetVar 0x40a0, 0x2
	SetFlag 0x1db
	SetFlag 0x231
	SetVar 0x409e, 0x1
	SetFlag 0xd6
	ClearFlag 0x1a3
	ClearFlag 0x1d9
	ClearFlag 0x1d6
	ClearFlag 0x22b
	ClearFlag 0x22d
	ClearFlag 0x22e
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x106, 0x0, 0x2ef, 0xe9, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 386

.byte 0x0 @ 0x386
.byte 0x0 @ 0x387

Movement_388: @ 388
	WalkUpFast 0x3
	EndMovement 0x0
@ 390

Movement_390: @ 390
	Move_3f 0x2
	MoveRightFast 0x1
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 3a4

Movement_3a4: @ 3a4
	Move_3f 0x1
	WalkUpFast 0x2
	EndMovement 0x0
@ 3b0

Movement_3b0: @ 3b0
	WalkUpFast 0x2
	Move_3f 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 3c0

Movement_3c0: @ 3c0
	MoveLeftVeryFast 0x1
	Move_3f 0x1
	MoveRightVeryFast 0x1
	Move_3f 0x1
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 3d8

Movement_3d8: @ 3d8
	MoveDownFast 0x1
	EndMovement 0x0
@ 3e0

Movement_3e0: @ 3e0
	Move_3f 0x2
	WalkDownFast 0x3
	EndMovement 0x0
@ 3ec

Movement_3ec: @ 3ec
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x3
	WalkLeftFast 0x1
	WalkDownFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 408

Movement_408: @ 408
	Move_3f 0x3
	Move_3e 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 418

Movement_418: @ 418
	Move_3f 0x1
	MoveDownFast 0x1
	Move_3f 0x1
	MoveLeftFast 0x1
	Move_3e 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 434

Movement_434: @ 434
	MoveRightFast 0x1
	EndMovement 0x0
@ 43c

Movement_43c: @ 43c
	MoveRightFast 0x1
	EndMovement 0x0
@ 444

Movement_444: @ 444
	MoveRightFast 0x1
	EndMovement 0x0
@ 44c

Movement_44c: @ 44c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 454

Movement_454: @ 454
	MoveRightVeryFast 0x3
	EndMovement 0x0
@ 45c

Movement_45c: @ 45c
	MoveLeftVeryFast 0x3
	EndMovement 0x0
@ 464

Movement_464: @ 464
	WalkRightVeryFast 0x2
	WalkDownVeryFast  0x5
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 47c

Movement_47c: @ 47c
	WalkDownVeryFast  0x5
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 490

Movement_490: @ 490
	WalkLeftVeryFast 0x2
	WalkUpVeryFast  0x3
	MoveUpFast 0x1
	WalkDownVeryFast  0x3
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 4a8

Movement_4a8: @ 4a8
	WalkLeftFast 0x3
	WalkUpFast 0x3
	EndMovement 0x0
@ 4b4

Movement_4b4: @ 4b4
	WalkLeftFast 0x1
	WalkUpFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 4c8

Movement_4c8: @ 4c8
	WalkUpFast 0x2
	WalkRightFast 0x1
	WalkUpFast 0x3
	WalkLeftFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 4e0

Movement_4e0: @ 4e0
	WalkRightFast 0x1
	WalkDownFast 0x1
	WalkRightFast 0x1
	WalkDownFast 0x3
	WalkLeftFast 0x1
	WalkDownFast 0x2
	EndMovement 0x0
@ 4fc

Movement_4fc: @ 4fc
	WalkRightFast 0x1
	WalkUpFast 0x4
	WalkLeftFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 510

Movement_510: @ 510
	WalkRightFast 0x1
	WalkDownFast 0x3
	WalkLeftFast 0x1
	WalkDownFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 528

@ end_0x528
