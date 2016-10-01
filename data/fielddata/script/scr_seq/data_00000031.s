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
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x0
	Soundfr 0x486
	SetVarHero 0x0
	Message 0x1
	Cmd_4f
	GiveItem 0x1cb, 0x1, 0x800c
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x2
	SetVar 0x8004, 0x1ba
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetVariableRival 0x1
	Message 0x3
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_a4
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_be
	Jump Script_branch_d8
	End
@ a4

Script_branch_a4: @ a4
	ApplyMovement 0x1, Movement_114
	ApplyMovement 0xff, Movement_138
	WaitMovement
	Jump Script_branch_f2
	End
@ be

Script_branch_be: @ be
	ApplyMovement 0x1, Movement_124
	ApplyMovement 0xff, Movement_148
	WaitMovement
	Jump Script_branch_f2
	End
@ d8

Script_branch_d8: @ d8
	ApplyMovement 0x1, Movement_124
	ApplyMovement 0xff, Movement_148
	WaitMovement
	Jump Script_branch_f2
	End
@ f2

Script_branch_f2: @ f2
	PlayFanfare 0x603
	RemovePeople 0x1
	WaitFanfare 0x603
	SetVar 0x40e7, 0x1
	SetFlag 0xf1
	ClearFlag 0x1f6
	ClearFlag 0x1f5
	ReleaseAll
	End
@ 114

Movement_114: @ 114
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x8
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 124

Movement_124: @ 124
	WalkDownVeryFast  0x4
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x4
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 138

Movement_138: @ 138
	Move_3f 0x1
	MoveRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 148

Movement_148: @ 148
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 154

Script_2: @ 154
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 167

Script_3: @ 167
	End
@ 169

Script_4: @ 169
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17c

Script_5: @ 17c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18f

Script_6: @ 18f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a2

Script_7: @ 1a2
	End
@ 1a4

Script_8: @ 1a4
	End
@ 1a6

Script_9: @ 1a6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x112
	CompareLastResultJump EQUAL, Script_branch_2a8
	CheckFlag 0x10c
	CompareLastResultJump EQUAL, Script_branch_2bd
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e7
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2d3
	End
@ 1e7

Script_branch_1e7: @ 1e7
	Message 0xa
	CloseMsgOnKeyPress
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_220
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_22e
	Jump Script_branch_212
	End
@ 212

Script_branch_212: @ 212
	TrainerBattle 0x156, 0x0
	Jump Script_branch_23c
	End
@ 220

Script_branch_220: @ 220
	TrainerBattle 0x156, 0x0
	Jump Script_branch_23c
	End
@ 22e

Script_branch_22e: @ 22e
	TrainerBattle 0x156, 0x0
	Jump Script_branch_23c
	End
@ 23c

Script_branch_23c: @ 23c
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2de
	SetFlag 0x10c
	CheckFlag 0x10d
	CompareLastResultJump EQUAL, Script_branch_274
	CheckFlag 0x10d
	CompareLastResultJump LESSER, Script_branch_269
	End
@ 269

Script_branch_269: @ 269
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 274

Script_branch_274: @ 274
	Message 0xd
	SetVar 0x8004, 0x11
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2b3
	CallStandard 0x7fc
	SetFlag 0x112
	Jump Script_branch_2a8
	End
@ 2a8

Script_branch_2a8: @ 2a8
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b3

Script_branch_2b3: @ 2b3
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2bd

Script_branch_2bd: @ 2bd
	CheckFlag 0x10d
	CompareLastResultJump EQUAL, Script_branch_274
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d3

Script_branch_2d3: @ 2d3
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2de

Script_branch_2de: @ 2de
	LostGoPc
	ReleaseAll
	End
@ 2e4

Script_10: @ 2e4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x10d
	CompareLastResultJump EQUAL, Script_branch_39c
	Message 0xf
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3a7
	End
@ 31a

Script_branch_31a: @ 31a
	Message 0x10
	CloseMsgOnKeyPress
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_353
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_361
	Jump Script_branch_345
	End
@ 345

Script_branch_345: @ 345
	TrainerBattle 0x159, 0x0
	Jump Script_branch_36f
	End
@ 353

Script_branch_353: @ 353
	TrainerBattle 0x159, 0x0
	Jump Script_branch_36f
	End
@ 361

Script_branch_361: @ 361
	TrainerBattle 0x159, 0x0
	Jump Script_branch_36f
	End
@ 36f

Script_branch_36f: @ 36f
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3d3
	SetFlag 0x10d
	CheckFlag 0x10c
	CompareLastResultJump EQUAL, Script_branch_3bd
	CheckFlag 0x10c
	CompareLastResultJump LESSER, Script_branch_3b2
	End
@ 39c

Script_branch_39c: @ 39c
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a7

Script_branch_3a7: @ 3a7
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3b2

Script_branch_3b2: @ 3b2
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3bd

Script_branch_3bd: @ 3bd
	CheckFlag 0x112
	CompareLastResultJump EQUAL, Script_branch_3b2
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d3

Script_branch_3d3: @ 3d3
	LostGoPc
	ReleaseAll
	End
@ 3d9

Script_11: @ 3d9
	PlayFanfare 0x5dc
	LockAll
	Message 0x14
	Jump Script_branch_3ea
	End
@ 3ea

Script_branch_3ea: @ 3ea
	Message 0x15
	Multi 0x7, 0x2, 0x0, 0x1, 0x800c
	Cmd_42 0x0, 0x0
	Cmd_42 0x1, 0x1
	Cmd_42 0x2, 0x2
	Cmd_42 0x3, 0x3
	Cmd_42 0x4, 0x4
	Cmd_42 0x5, 0x5
	MultiRow 0x2
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_45f
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_46a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_475
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_480
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_48b
	Jump Script_branch_496
	End
@ 45f

Script_branch_45f: @ 45f
	Message 0x16
	Jump Script_branch_3ea
	End
@ 46a

Script_branch_46a: @ 46a
	Message 0x17
	Jump Script_branch_3ea
	End
@ 475

Script_branch_475: @ 475
	Message 0x18
	Jump Script_branch_3ea
	End
@ 480

Script_branch_480: @ 480
	Message 0x19
	Jump Script_branch_3ea
	End
@ 48b

Script_branch_48b: @ 48b
	Message 0x1a
	Jump Script_branch_3ea
	End
@ 496

Script_branch_496: @ 496
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 49c

Script_12: @ 49c
	PlayFanfare 0x5dc
	LockAll
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4ad

.byte 0x0 @ 0x4ad
.byte 0x0 @ 0x4ae
.byte 0x0 @ 0x4af

@ end_0x4b0
