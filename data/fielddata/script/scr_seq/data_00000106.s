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
	CheckFlag 0x8c
	CompareLastResultJump 0x1, Script_branch_54
	SetVarItem 0x0, 0xfd
	Message 0x0
	SetVar 0x8004, 0xfd
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_64
	SetFlag 0x8c
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 54

Script_branch_54: @ 54
	SetVarItem 0x0, 0xfd
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 64

Script_branch_64: @ 64
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e

Script_2: @ 6e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8d

.byte 0x0 @ 0x8d
.byte 0x0 @ 0x8e
.byte 0x0 @ 0x8f

@ end_0x90
