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
	CheckItem 0x1b8, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_49
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 49

Script_branch_49: @ 49
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_a0
	End
@ 6c

Script_branch_6c: @ 6c
	SetVarHero 0x0
	Message 0x3
	WaitButton
	WaitFanfare 0x5dc
	PlayFanfare 0x608
	ApplyMovement 0x5, Movement_a8
	ApplyMovement 0x6, Movement_b0
	WaitMovement
	SetFlag 0x225
	RemovePeople 0x5
	RemovePeople 0x6
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a0

Script_branch_a0: @ a0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a6

.byte 0x0 @ 0xa6
.byte 0x0 @ 0xa7

Movement_a8: @ a8
	WalkLeftVeryFast 0x1
	EndMovement 0x0
@ b0

Movement_b0: @ b0
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ b8

Script_3: @ b8
	PlayFanfare 0x5dc
	LockAll
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c9

.byte 0x0 @ 0xc9
.byte 0x0 @ 0xca
.byte 0x0 @ 0xcb

@ end_0xcc
