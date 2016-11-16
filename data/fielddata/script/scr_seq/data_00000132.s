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
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d

Script_2: @ 1d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x11c
	CompareLastResultJump EQUAL, Script_branch_bd
	CheckFlag 0x78
	CompareLastResultJump EQUAL, Script_branch_4a
	Message 0x1
	SetFlag 0x78
	Jump Script_branch_c8
@ 48

.byte 0x2 @ 0x48
.byte 0x0 @ 0x49

Script_branch_4a: @ 4a
	CheckCoombeEvent 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_9c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_a7
	Message 0x4
	SetVar 0x8004, 0xd7
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_b2
	SetFlag 0x11c
	CallStandard 0x7fc
	Jump Script_branch_bd
@ 9a

.byte 0x2 @ 0x9a
.byte 0x0 @ 0x9b

Script_branch_9c: @ 9c
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a7

Script_branch_a7: @ a7
	Message 0x3
	Jump Script_branch_c8
@ b0

.byte 0x2 @ 0xb0
.byte 0x0 @ 0xb1

Script_branch_b2: @ b2
	Message 0x5
	Jump Script_branch_c8
@ bb

.byte 0x2 @ 0xbb
.byte 0x0 @ 0xbc

Script_branch_bd: @ bd
	Message 0x6
	Jump Script_branch_c8
@ c6

.byte 0x2 @ 0xc6
.byte 0x0 @ 0xc7

Script_branch_c8: @ c8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d0

@ end_0xd0
