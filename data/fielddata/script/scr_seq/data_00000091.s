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
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6f
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6f
	Message 0x4
	Jump Script_branch_7a
	End
@ 6f

Script_branch_6f: @ 6f
	Message 0x5
	Jump Script_branch_7a
	End
@ 7a

Script_branch_7a: @ 7a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

.byte 0x0 @ 0x82
.byte 0x0 @ 0x83

@ end_0x84
