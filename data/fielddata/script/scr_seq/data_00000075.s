.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	SetVar 0x8007, 0x3
	CallStandard 0x7d2
	End
@ 22

Script_2: @ 22
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 35

Script_3: @ 35
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x81
	CompareLastResultJump 0x1, Script_branch_53
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53

Script_branch_53: @ 53
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5e

Script_4: @ 5e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1ab, 0x0
	Message 0x3
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7d

Script_5: @ 7d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x4002, 0x1
	CompareLastResultJump 0x1, Script_branch_f4
	StorePoketchApp 0x5, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_d9
	CheckFirstPokeParty 0x8000
	SetVarPoke 0x0, 0x8000
	Message 0x6
	StoreHappyPoke 0x800c, 0x8000
	If 0x800c, 0x78
	CompareLastResultJump 0x4, Script_branch_ff
	If 0x800c, 0x46
	CompareLastResultJump 0x4, Script_branch_10a
	Jump Script_branch_115
	End
@ d9

Script_branch_d9: @ d9
	Message 0x4
	SetVar 0x4002, 0x1
	SetVar 0x8004, 0x5
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f4

Script_branch_f4: @ f4
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ff

Script_branch_ff: @ ff
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10a

Script_branch_10a: @ 10a
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 115

Script_branch_115: @ 115
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 120

@ end_0x120
