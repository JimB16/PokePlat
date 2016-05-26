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

Script_7: @ 22
	End
@ 24

Script_1: @ 24
	If 0x40cf, 0x2
	CompareLastResultCall 0x1, Script_branch_82
	CheckFlag 0x10f
	CompareLastResultCall 0x1, Script_branch_bb
	CheckFlag 0x10f
	CompareLastResultCall 0x0, Script_branch_c5
	If 0x4089, 0x2
	CompareLastResultJump 0x0, Script_branch_7c
	CheckFlag 0xaa8
	CompareLastResultJump 0x1, Script_branch_7c
	CheckPokemart 0x4000
	If 0x4000, 0x5
	CompareLastResultJump 0x5, Script_branch_7c
	Jump Script_branch_76
@ 76

Script_branch_76: @ 76
	ClearFlag 0x20b
	End
@ 7c

Script_branch_7c: @ 7c
	SetFlag 0x20b
	End
@ 82

Script_branch_82: @ 82
	SetVar 0x40cf, 0x3
	Return
@ 8a

Script_2: @ 8a
	CheckFlag 0x10f
	CompareLastResultCall 0x1, Script_branch_bb
	CheckFlag 0x10f
	CompareLastResultCall 0x0, Script_branch_c5
	CheckFlag 0x8e
	CompareLastResultJump 0x1, Script_branch_ad
	End
@ ad

Script_branch_ad: @ ad
	SetFlag 0x20b
	RemovePeople 0x4
	ClearFlag 0x8e
	End
@ bb

Function_bb: @ bb
Script_branch_bb: @ bb
	SetTileLocked 0x1, 0xf3, 0x28a
	Return
@ c5

Script_branch_c5: @ c5
	SetTilePassable 0x0, 0xf3, 0x28a
	Return
@ cf

Script_3: @ cf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x34b, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_133
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_13c
	WaitMovement
	PrepareDoorAnimation 0x7, 0x14, 0x13, 0xe, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x0, Movement_144
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Message 0x4
	RemovePeople 0x0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 133

Script_branch_133: @ 133
	LostGoPc
	ReleaseAll
	End
@ 139

.byte 0x0 @ 0x139
.byte 0x0 @ 0x13a
.byte 0x0 @ 0x13b

Movement_13c: @ 13c
	MoveUpFast 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 150

Script_4: @ 150
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x9f
	CompareLastResultJump 0x1, Script_branch_16c
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16c

Script_branch_16c: @ 16c
	SetVarItem 0x0, 0x1b6
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1a2
	SetFlag 0x10f
	Call Script_branch_bb
	SetTilePassable 0x0, 0xf3, 0x28e
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a2

Script_branch_1a2: @ 1a2
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a8

Script_5: @ 1a8
	CallMessageBox 0x9, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 1bf

Script_6: @ 1bf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	PlayCry 0x1a9, 0x0
	Message 0x8
	CloseMsgOnKeyPress
	WaitCry
	SetFlag 0x8e
	WildBattle2 0x1a9, 0xf
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1fb
	SetFlag 0xaa8
	ReleaseAll
	End
@ 1fb

Script_branch_1fb: @ 1fb
	LostGoPc
	ReleaseAll
	End
@ 201

Script_8: @ 201
	LockAll
	ApplyMovement 0x6, Movement_2d8
	ApplyMovement 0xff, Movement_2ac
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_2bc
	ApplyMovement 0x6, Movement_2ec
	WaitMovement
	PrepareDoorAnimation 0x7, 0x14, 0x13, 0xe, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x6, Movement_300
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return2 0x78, 0x800c
	PrepareDoorAnimation 0x7, 0x14, 0x13, 0xe, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x6, Movement_310
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	ApplyMovement 0x6, Movement_31c
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_2c8
	ApplyMovement 0x6, Movement_324
	WaitMovement
	RemovePeople 0x6
	SetVar 0x411e, 0x2
	ReleaseAll
	End
@ 2a9

.byte 0x0 @ 0x2a9
.byte 0x0 @ 0x2aa
.byte 0x0 @ 0x2ab

Movement_2ac: @ 2ac
	Move_3f 0x5
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 2bc

Movement_2bc: @ 2bc
	WalkDownFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 2c8

Movement_2c8: @ 2c8
	Move_3f 0x1
	MoveLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2d8

Movement_2d8: @ 2d8
	Exclamation 0x1
	Move_3f 0x1
	WalkUpVeryFast  0x4
	MoveRightVeryFast 0x1
	EndMovement 0x0
@ 2ec

Movement_2ec: @ 2ec
	Move_3f 0x1
	Move_3e 0x1
	WalkRightFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 300

Movement_300: @ 300
	WalkUpFast 0x1
	WaitDisappear 0x1
	SeeDown 0x1
	EndMovement 0x0
@ 310

Movement_310: @ 310
	Move_46 0x1
	WalkDownVeryFast  0x1
	EndMovement 0x0
@ 31c

Movement_31c: @ 31c
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 324

Movement_324: @ 324
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x1
	WalkDownVeryFast  0x6
	WalkLeftVeryFast 0x9
	EndMovement 0x0
@ 338

@ end_0x338
