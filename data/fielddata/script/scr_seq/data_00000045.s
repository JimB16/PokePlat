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
	CheckFlag 0xc9
	CompareLastResultJump EQUAL, Script_branch_51
	Message 0x0
	SetVar 0x8004, 0x177
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c
	CallStandard 0x7fc
	SetFlag 0xc9
	Jump Script_branch_51
@ 4f

.byte 0x2 @ 0x4f
.byte 0x0 @ 0x50

Script_branch_51: @ 51
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c

Script_branch_5c: @ 5c
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 66

Script_2: @ 66
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 79

.byte 0x0 @ 0x79
.byte 0x0 @ 0x7a
.byte 0x0 @ 0x7b

@ end_0x7c
