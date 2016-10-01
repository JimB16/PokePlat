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
	SetVar 0x8007, 0x0
	CallStandard 0x7d2
	End
@ 22

Script_2: @ 22
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 35

Script_3: @ 35
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 48

Script_4: @ 48
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
@ 67

Script_5: @ 67
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x6, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_ec
	CheckFacePosition 0x8000
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_c8
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_c8
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_d4
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_e0
	SetVarHero 0x0
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c8

Script_branch_c8: @ c8
	ApplyMovement 0x4, Movement_fc
	WaitMovement
	Return
@ d4

Script_branch_d4: @ d4
	ApplyMovement 0x4, Movement_104
	WaitMovement
	Return
@ e0

Script_branch_e0: @ e0
	ApplyMovement 0x4, Movement_10c
	WaitMovement
	Return
@ ec

Script_branch_ec: @ ec
	SetVarHero 0x0
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fa

.byte 0x0 @ 0xfa
.byte 0x0 @ 0xfb

Movement_fc: @ fc
	Move_29 0x2
	EndMovement 0x0
@ 104

Movement_104: @ 104
	Move_2b 0x2
	EndMovement 0x0
@ 10c

Movement_10c: @ 10c
	Move_2a 0x2
	EndMovement 0x0
@ 114

@ end_0x114
