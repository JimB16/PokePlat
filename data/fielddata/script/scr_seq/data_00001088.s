.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	SetVar 0x8007, 0x0
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
	CheckFlag 0xaa1
	CompareLastResultJump EQUAL, Script_branch_c0
	Message 0x2
	CheckFirstPokeParty 0x8000
	StoreHappyPoke 0x800c, 0x8000
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_84
	If 0x800c, 0x32
	CompareLastResultJump 0x4, Script_branch_cb
	Jump Script_branch_d6
Script_branch_84: @ 84
	Message 0x3
	SetVar 0x8004, 0x3
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_b6
	CallStandard 0x7fc
	SetFlag 0xaa1
	Jump Script_branch_c0
Script_branch_b6: @ b6
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c0

Script_branch_c0: @ c0
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cb

Script_branch_cb: @ cb
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d6

Script_branch_d6: @ d6
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e1

.byte 0x0 @ 0xe1
.byte 0x0 @ 0xe2
.byte 0x0 @ 0xe3

@ end_0xe4
