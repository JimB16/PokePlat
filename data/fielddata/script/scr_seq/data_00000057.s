.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 25

Script_2: @ 25
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 38

Script_3: @ 38
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xc0
	CompareLastResultJump EQUAL, Script_branch_8c
	SetVarItem 0x0, 0xd
	Message 0x2
	SetVar 0x8004, 0xd
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_82
	SetFlag 0xc0
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

Script_branch_82: @ 82
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8c

Script_branch_8c: @ 8c
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 97

Script_4: @ 97
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x36, 0x0
	Message 0x4
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b6

.byte 0x0 @ 0xb6
.byte 0x0 @ 0xb7

@ end_0xb8
