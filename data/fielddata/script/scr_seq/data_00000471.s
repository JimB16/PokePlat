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
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 23

Script_2: @ 23
	CallMessageBox 0x4, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 3a

Script_3: @ 3a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d

Script_4: @ 4d
	LockAll
	ClearFlag 0x297
	AddPeople 0xf
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x12e
	CompareLastResultCall EQUAL, Script_branch_ca
	If 0x8004, 0x12f
	CompareLastResultCall EQUAL, Script_branch_d6
	SetVarHero 0x0
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_10c
	WaitMovement
	ApplyMovement 0xf, Movement_14c
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x12e
	CompareLastResultCall EQUAL, Script_branch_e2
	If 0x8004, 0x12f
	CompareLastResultCall EQUAL, Script_branch_f6
	RemovePeople 0xf
	SetVar 0x40a8, 0x1
	SetFlag 0x298
	ReleaseAll
	End
@ ca

Script_branch_ca: @ ca
	ApplyMovement 0xf, Movement_124
	WaitMovement
	Return
@ d6

Script_branch_d6: @ d6
	ApplyMovement 0xf, Movement_138
	WaitMovement
	Return
@ e2

Script_branch_e2: @ e2
	ApplyMovement 0xff, Movement_114
	ApplyMovement 0xf, Movement_154
	WaitMovement
	Return
@ f6

Script_branch_f6: @ f6
	ApplyMovement 0xff, Movement_114
	ApplyMovement 0xf, Movement_168
	WaitMovement
	Return
@ 10a

.byte 0x0 @ 0x10a
.byte 0x0 @ 0x10b

Movement_10c: @ 10c
	MoveDownFast 0x1
	EndMovement 0x0
@ 114

Movement_114: @ 114
	Move_3f 0x2
	Move_3e 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 124

Movement_124: @ 124
	WalkUpFast 0x4
	WalkLeftFast 0x3
	WalkUpFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 138

Movement_138: @ 138
	WalkUpFast 0x4
	WalkLeftFast 0x2
	WalkUpFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	WalkUpFast 0x1
	EndMovement 0x0
@ 154

Movement_154: @ 154
	WalkRightFast 0x1
	WalkUpFast 0x3
	WalkRightFast 0x2
	WalkUpFast 0x9
	EndMovement 0x0
@ 168

Movement_168: @ 168
	WalkLeftFast 0x1
	WalkUpFast 0x3
	WalkRightFast 0x3
	WalkUpFast 0x9
	EndMovement 0x0
@ 17c

@ end_0x17c
