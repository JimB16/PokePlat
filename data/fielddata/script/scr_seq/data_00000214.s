.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetFlag 0x9c2
	SetFlag 0x2c8
	If 0x4056, 0x1
	CompareLastResultCall 0x1, Script_branch_29
	End
@ 29

Script_branch_29: @ 29
	ClearFlag 0x2c8
	Return
@ 2f

Script_2: @ 2f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 42

Script_3: @ 42
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 55

Script_4: @ 55
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa5
	CompareLastResultJump 0x1, Script_branch_12b
	Message 0x2
	Jump Script_branch_73
@ 71

.byte 0x2 @ 0x71
.byte 0x0 @ 0x72

Script_branch_73: @ 73
	SetVar 0x8004, 0x12a
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_114
	CallStandard 0x7fc
	Message 0x5
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x3
	CompareLastResultJump 0x1, Script_branch_cc
	If 0x8005, 0x4
	CompareLastResultJump 0x1, Script_branch_de
	If 0x8005, 0x5
	CompareLastResultJump 0x1, Script_branch_f0
	End
@ cc

Script_branch_cc: @ cc
	ApplyMovement 0x3, Movement_138
	WaitMovement
	Jump Script_branch_102
@ dc

.byte 0x2 @ 0xdc
.byte 0x0 @ 0xdd

Script_branch_de: @ de
	ApplyMovement 0x3, Movement_144
	WaitMovement
	Jump Script_branch_102
@ ee

.byte 0x2 @ 0xee
.byte 0x0 @ 0xef

Script_branch_f0: @ f0
	ApplyMovement 0x3, Movement_144
	WaitMovement
	Jump Script_branch_102
@ 100

.byte 0x2 @ 0x100
.byte 0x0 @ 0x101

Script_branch_102: @ 102
	PlayFanfare 0x603
	RemovePeople 0x3
	SetVar 0x4056, 0x2
	ReleaseAll
	End
@ 114

Script_branch_114: @ 114
	SetFlag 0xa5
	Message 0x3
	Jump Script_branch_123
@ 121

.byte 0x2 @ 0x121
.byte 0x0 @ 0x122

Script_branch_123: @ 123
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12b

Script_branch_12b: @ 12b
	Message 0x4
	Jump Script_branch_73
@ 134

.byte 0x2 @ 0x134
.byte 0x0 @ 0x135
.byte 0x0 @ 0x136
.byte 0x0 @ 0x137

Movement_138: @ 138
	WalkLeftFast 0x1
	WalkUpFast 0x3
	EndMovement 0x0
@ 144

Movement_144: @ 144
	WalkUpFast 0x3
	EndMovement 0x0
@ 14c

@ end_0x14c
