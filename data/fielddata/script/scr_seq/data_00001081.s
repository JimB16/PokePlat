.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	CheckFlag 0xfe
	CompareLastResultCall 0x1, Script_branch_1b
	End
@ 1b

Script_branch_1b: @ 1b
	ClearFlag 0x1d1
	Return
@ 21

Script_2: @ 21
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePoketchApp 0x8, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_51
	Message 0x0
	SetVar 0x8004, 0x8
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51

Script_branch_51: @ 51
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c

Script_3: @ 5c
	PlayFanfare 0x5dc
	LockAll
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6d

.byte 0x0 @ 0x6d
.byte 0x0 @ 0x6e
.byte 0x0 @ 0x6f

@ end_0x70
