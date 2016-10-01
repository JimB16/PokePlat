.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x98
	CompareLastResultJump EQUAL, Script_branch_113
	Call Function_119
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_106
	CheckFlag 0x99
	CompareLastResultJump EQUAL, Script_branch_b3
	CheckFlag 0x119
	CompareLastResultJump EQUAL, Script_branch_8b
	SetVarHero 0x0
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_158
	WaitMovement
	Message 0x1
	SetVar 0x8004, 0xfc
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_91
	CallStandard 0x7fc
	SetFlag 0x119
	Message 0x2
	Jump Script_branch_9b
	End
@ 8b

Script_branch_8b: @ 8b
	CallStandard 0x26e0
	End
@ 91

Script_branch_91: @ 91
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9b

Script_branch_9b: @ 9b
	ActSwarmPoke 0x3
	ActSwarmPoke 0x4
	ActSwarmPoke 0x5
	SetFlag 0x99
	Message 0x3
	Jump Script_branch_150
	End
@ b3

Script_branch_b3: @ b3
	If 0x405e, 0x3
	CompareLastResultCall EQUAL, Script_branch_e5
	If 0x405f, 0x3
	CompareLastResultCall EQUAL, Script_branch_f0
	If 0x4060, 0x3
	CompareLastResultCall EQUAL, Script_branch_fb
	Message 0x4
	Jump Script_branch_150
	End
@ e5

Script_branch_e5: @ e5
	SetVar 0x405e, 0x0
	ActSwarmPoke 0x3
	Return
@ f0

Script_branch_f0: @ f0
	SetVar 0x405f, 0x0
	ActSwarmPoke 0x4
	Return
@ fb

Script_branch_fb: @ fb
	SetVar 0x4060, 0x0
	ActSwarmPoke 0x5
	Return
@ 106

Script_branch_106: @ 106
	Message 0x5
	SetFlag 0x98
	CallStandard 0x26e1
	End
@ 113

Script_branch_113: @ 113
	CallStandard 0x26e0
	End
@ 119

Function_119: @ 119
	If 0x405e, 0x1
	CompareLastResultJump 0x5, Script_branch_148
	If 0x405f, 0x1
	CompareLastResultJump 0x5, Script_branch_148
	If 0x4060, 0x1
	CompareLastResultJump 0x5, Script_branch_148
	SetVar 0x800c, 0x1
	Return
@ 148

Script_branch_148: @ 148
	SetVar 0x800c, 0x0
	Return
@ 150

Script_branch_150: @ 150
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 158

Movement_158: @ 158
	Exclamation 0x1
	EndMovement 0x0
@ 160

@ end_0x160
