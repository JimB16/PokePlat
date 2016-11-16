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
	CheckFlag 0x10a
	CompareLastResultJump EQUAL, Script_branch_6c
	Message 0x1
	SetVar 0x8004, 0x3
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_77
	CallStandard 0x7fc
	SetFlag 0x10a
	Jump Script_branch_6c
@ 6a

.byte 0x2 @ 0x6a
.byte 0x0 @ 0x6b

Script_branch_6c: @ 6c
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 77

Script_branch_77: @ 77
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81

Script_3: @ 81
	End
@ 83

Script_4: @ 83
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 96

.byte 0x0 @ 0x96
.byte 0x0 @ 0x97

@ end_0x98
