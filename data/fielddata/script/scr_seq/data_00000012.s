.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_4: @ 12
	CheckStatusPhraseBox 0x9, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_2b
	ClearFlag 0x215
	End
@ 2b

Script_branch_2b: @ 2b
	SetFlag 0x215
	End
@ 31

Script_1: @ 31
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Script_2: @ 44
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x13d
	CompareLastResultJump EQUAL, Script_branch_a4
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultCall EQUAL, Script_branch_b4
	If 0x800c, 0x186
	CompareLastResultCall EQUAL, Script_branch_bc
	If 0x800c, 0x189
	CompareLastResultCall EQUAL, Script_branch_c4
	CopyVar 0x410a, 0x8004
	Cmd_343 0x0, 0x8004
	Message 0x1
	SetVar 0x8005, 0x1
	CallStandard 0x7df
	SetFlag 0x13d
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a4

Script_branch_a4: @ a4
	CheckAccessories3 0x0, 0x410a
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b4

Script_branch_b4: @ b4
	SetVar 0x8004, 0x5c
	Return
@ bc

Script_branch_bc: @ bc
	SetVar 0x8004, 0x5d
	Return
@ c4

Script_branch_c4: @ c4
	SetVar 0x8004, 0x5e
	Return
@ cc

Script_3: @ cc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ df

.byte 0x0 @ 0xdf

@ end_0xe0
