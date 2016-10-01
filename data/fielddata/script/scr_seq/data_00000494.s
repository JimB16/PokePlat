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
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_41
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_4c
	End
@ 41

Script_branch_41: @ 41
	Message 0x1
	Jump Script_branch_57
	End
@ 4c

Script_branch_4c: @ 4c
	Message 0x2
	Jump Script_branch_57
	End
@ 57

Script_branch_57: @ 57
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5f

Script_2: @ 5f
	PlayFanfare 0x5dc
	LockAll
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 70

Script_3: @ 70
	PlayFanfare 0x5dc
	LockAll
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81

Script_4: @ 81
	PlayFanfare 0x5dc
	LockAll
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 92

Script_5: @ 92
	PlayFanfare 0x5dc
	LockAll
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a3

.byte 0x0 @ 0xa3

@ end_0xa4
