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
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x1
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Script_3: @ 44
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1a1, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 63

Script_4: @ 63
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xbf
	CompareLastResultJump EQUAL, Script_branch_b7
	SetVarItem 0x0, 0xd9
	Message 0x3
	SetVar 0x8004, 0xd9
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ad
	SetFlag 0xbf
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ad

Script_branch_ad: @ ad
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b7

Script_branch_b7: @ b7
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c2

.byte 0x0 @ 0xc2
.byte 0x0 @ 0xc3

@ end_0xc4
