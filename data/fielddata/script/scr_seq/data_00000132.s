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
	End
@ 4a

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
	End
@ 9c

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
	End
@ b2

Script_branch_b2: @ b2
	Message 0x5
	Jump Script_branch_c8
	End
@ bd

Script_branch_bd: @ bd
	Message 0x6
	Jump Script_branch_c8
	End
@ c8

Script_branch_c8: @ c8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d0

@ end_0xd0
