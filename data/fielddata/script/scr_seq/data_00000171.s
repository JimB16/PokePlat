.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 25

Script_2: @ 25
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 38

Script_3: @ 38
	PlayFanfare 0x5dc
	LockAll
	SetVarHero 0x0
	Message 0x3
	CloseMsgOnKeyPress
	LeagueCastleView
	ReleaseAll
	End
@ 4c

Script_4: @ 4c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	Message 0x1
	Message 0x2
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_92
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_aa
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_c2
	End
@ 92

Script_branch_92: @ 92
	ApplyMovement 0x2, Movement_104
	ApplyMovement 0xff, Movement_13c
	WaitMovement
	Jump Script_branch_d2
@ aa

Script_branch_aa: @ aa
	ApplyMovement 0x2, Movement_118
	ApplyMovement 0xff, Movement_148
	WaitMovement
	Jump Script_branch_d2
@ c2

Script_branch_c2: @ c2
	ApplyMovement 0x2, Movement_118
	WaitMovement
	Jump Script_branch_d2
@ d2

Script_branch_d2: @ d2
	PrepareDoorAnimation 0x0, 0x0, 0x6, 0x9, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x2, Movement_130
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	RemovePeople 0x2
	SetFlag 0x162
	ReleaseAll
	End
@ 102

.byte 0x0 @ 0x102
.byte 0x0 @ 0x103

Movement_104: @ 104
	WalkRightFast 0x3
	WalkDownFast 0x6
	WalkLeftFast 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 118

Movement_118: @ 118
	WalkDownFast 0x1
	WalkRightFast 0x3
	WalkDownFast 0x5
	WalkLeftFast 0x3
	MoveUpFast 0x1
	EndMovement 0x0
@ 130

Movement_130: @ 130
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 13c

Movement_13c: @ 13c
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 148

Movement_148: @ 148
	Move_3f 0x1
	MoveDownFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 15c

@ end_0x15c
