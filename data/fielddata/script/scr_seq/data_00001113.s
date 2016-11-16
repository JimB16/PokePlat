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
	ApplyMovement 0x0, Movement_2c
	WaitMovement
	ReleaseAll
	End
@ 2b

.byte 0x0 @ 0x2b

Movement_2c: @ 2c
	MoveUpFast 0x1
	EndMovement 0x0
@ 34

Script_2: @ 34
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 47

Script_3: @ 47
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_7a
	End
@ 6f

Script_branch_6f: @ 6f
	Message 0x3
	Jump Script_branch_85
@ 78

.byte 0x2 @ 0x78
.byte 0x0 @ 0x79

Script_branch_7a: @ 7a
	Message 0x4
	Jump Script_branch_85
@ 83

.byte 0x2 @ 0x83
.byte 0x0 @ 0x84

Script_branch_85: @ 85
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8d

.byte 0x0 @ 0x8d
.byte 0x0 @ 0x8e
.byte 0x0 @ 0x8f

@ end_0x90
