.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetVar 0x8007, 0x2
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
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Script_4: @ 44
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40cf, 0x2
	CompareLastResultJump 0x4, Script_branch_64
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 64

Script_branch_64: @ 64
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f

.byte 0x0 @ 0x6f

@ end_0x70
