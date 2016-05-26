.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xaa3
	CompareLastResultJump 0x1, Script_branch_55
	Message 0x0
	CheckIdPlayer 0x8004, 0x11
	SetValue 0x8004, 0xb8
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_60
	SetFlag 0xaa3
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 55

Script_branch_55: @ 55
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 60

Script_branch_60: @ 60
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a

Script_2: @ 6a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7d

.byte 0x0 @ 0x7d
.byte 0x0 @ 0x7e
.byte 0x0 @ 0x7f

@ end_0x80
