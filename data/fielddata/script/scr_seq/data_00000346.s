.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21

Script_2: @ 21
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34

Script_3: @ 34
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1b8, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5c
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c

Script_branch_5c: @ 5c
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_7f
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b3
	End
@ 7f

Script_branch_7f: @ 7f
	SetVarHero 0x0
	Message 0x4
	WaitButton
	WaitFanfare 0x5dc
	PlayFanfare 0x608
	ApplyMovement 0x6, Movement_bc
	ApplyMovement 0x7, Movement_c4
	WaitMovement
	SetFlag 0x227
	RemovePeople 0x6
	RemovePeople 0x7
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b3

Script_branch_b3: @ b3
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b9

.byte 0x0 @ 0xb9
.byte 0x0 @ 0xba
.byte 0x0 @ 0xbb

Movement_bc: @ bc
	WalkLeftVeryFast 0x1
	EndMovement 0x0
@ c4

Movement_c4: @ c4
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ cc

@ end_0xcc
