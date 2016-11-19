.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetVar 0x8007, 0x0
	CallStandard 0x7d2
	End
@ 1e

Script_2: @ 1e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 31

Script_3: @ 31
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 7, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_57
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

Script_branch_57: @ 57
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 62

Script_4: @ 62
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 75

.byte 0x0 @ 0x75
.byte 0x0 @ 0x76
.byte 0x0 @ 0x77

@ end_0x78
