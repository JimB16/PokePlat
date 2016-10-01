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
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump EQUAL, Script_branch_34
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34

Script_branch_34: @ 34
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f

Script_2: @ 3f
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0xa8
	CompareLastResultJump EQUAL, Script_branch_68
	Message 0x2
	FacePlayer
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_78
	WaitMovement
	ReleaseAll
	End
@ 68

Script_branch_68: @ 68
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 75

.byte 0x0 @ 0x75
.byte 0x0 @ 0x76
.byte 0x0 @ 0x77

Movement_78: @ 78
	SeeUp 0x1
	EndMovement 0x0
@ 80

Script_3: @ 80
	PlayFanfare 0x5dc
	LockAll
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 91

Script_4: @ 91
	PlayFanfare 0x5dc
	LockAll
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a2

Script_5: @ a2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	CheckIdPlayer 0x8000, 0x5
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_fc
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_101
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_106
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_10b
	If 0x8000, 0x4
	CompareLastResultCall EQUAL, Script_branch_110
	Jump Script_branch_115
	End
@ fc

Script_branch_fc: @ fc
	Message 0x9
	Return
@ 101

Script_branch_101: @ 101
	Message 0xa
	Return
@ 106

Script_branch_106: @ 106
	Message 0xb
	Return
@ 10b

Script_branch_10b: @ 10b
	Message 0xc
	Return
@ 110

Script_branch_110: @ 110
	Message 0xd
	Return
@ 115

Script_branch_115: @ 115
	Message 0x8
	CloseMsgOnKeyPress
	CheckFacePosition 0x8000
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_155
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_169
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_175
	PlayFanfare 0x603
	RemovePeople 0x2
	WaitFanfare 0x603
	ReleaseAll
	End
@ 155

Script_branch_155: @ 155
	ApplyMovement 0x2, Movement_18c
	ApplyMovement 0xff, Movement_1b0
	WaitMovement
	Return
@ 169

Script_branch_169: @ 169
	ApplyMovement 0x2, Movement_18c
	WaitMovement
	Return
@ 175

Script_branch_175: @ 175
	ApplyMovement 0x2, Movement_19c
	ApplyMovement 0xff, Movement_1bc
	WaitMovement
	Return
@ 189

.byte 0x0 @ 0x189
.byte 0x0 @ 0x18a
.byte 0x0 @ 0x18b

Movement_18c: @ 18c
	WalkLeftFast 0x5
	WalkDownFast 0x6
	Move_3e 0x1
	EndMovement 0x0
@ 19c

Movement_19c: @ 19c
	WalkDownFast 0x1
	WalkLeftFast 0x5
	WalkDownFast 0x5
	Move_3e 0x1
	EndMovement 0x0
@ 1b0

Movement_1b0: @ 1b0
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1bc

Movement_1bc: @ 1bc
	Move_3f 0x2
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1cc

@ end_0x1cc
