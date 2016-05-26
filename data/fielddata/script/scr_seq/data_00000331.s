.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	CheckFlag 0x11d
	CompareLastResultJump 0x1, Script_branch_29
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x1
	CompareLastResultCall 0x1, Script_branch_2f
	End
@ 29

Script_branch_29: @ 29
	SetFlag 0x24d
	End
@ 2f

Script_branch_2f: @ 2f
	ClearFlag 0x24d
	Return
@ 35

Script_2: @ 35
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	SetVar 0x8004, 0xe9
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_a8
	CallStandard 0x7fc
	SetFlag 0x11d
	Message 0x1
	CloseMsgOnKeyPress
	CheckFacePosition 0x8004
	If 0x8004, 0x2
	CompareLastResultJump 0x1, Script_branch_b2
	If 0x8004, 0x3
	CompareLastResultJump 0x1, Script_branch_d0
	If 0x8004, 0x0
	CompareLastResultJump 0x1, Script_branch_b2
	If 0x8004, 0x1
	CompareLastResultJump 0x1, Script_branch_d0
	End
@ a8

Script_branch_a8: @ a8
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b2

Script_branch_b2: @ b2
	ApplyMovement 0x0, Movement_f0
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x0
	WaitFanfare 0x603
	PlayFanfare2 0x603
	ReleaseAll
	End
@ d0

Script_branch_d0: @ d0
	ApplyMovement 0x0, Movement_fc
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x0
	WaitFanfare 0x603
	PlayFanfare2 0x603
	ReleaseAll
	End
@ ee

.byte 0x0 @ 0xee
.byte 0x0 @ 0xef

Movement_f0: @ f0
	WalkLeftFast 0x1
	WalkDownFast 0x3
	EndMovement 0x0
@ fc

Movement_fc: @ fc
	WalkDownFast 0x2
	WalkLeftFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 10c

@ end_0x10c
