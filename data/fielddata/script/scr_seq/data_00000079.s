.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_7: @ 1e
	End
@ 20

Script_1: @ 20
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33

Script_2: @ 33
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 46

Script_3: @ 46
	PlayFanfare 0x5dc
	LockAll
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

Script_4: @ 57
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a

Script_5: @ 6a
	LockAll
	ApplyMovement 0x4, Movement_fc
	ApplyMovement 0xff, Movement_f0
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_110
	WaitMovement
	ClearFlag 0x1bb
	ChangeOwPosition 0x5, 0xc, 0xf
	ChangeOwMovement 0x5, 0x10
	ReleaseOw 0x5, 0x2
	AddPeople 0x5
	RemovePeople 0x4
	SetFlag 0x71
	SetVar 0x411d, 0x1
	Return2 0x1e, 0x800c
	Message 0x1
	ApplyMovement 0x5, Movement_110
	WaitMovement
	ClearFlag 0x1c2
	ChangeOwPosition 0x4, 0xc, 0xf
	ChangeOwMovement 0x4, 0x10
	ReleaseOw 0x4, 0x2
	AddPeople 0x4
	RemovePeople 0x5
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f0

Movement_f0: @ f0
	Move_3f 0x9
	MoveRightFast 0x1
	EndMovement 0x0
@ fc

Movement_fc: @ fc
	MoveLeftVeryFast 0x1
	Exclamation 0x1
	Move_3f 0x2
	WalkLeftFast 0x2
	EndMovement 0x0
@ 110

Movement_110: @ 110
	SeeDown 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3e 0x1
	SeeUp 0x1
	Move_3e 0x1
	SeeLeft 0x1
	Move_3d 0x1
	EndMovement 0x0
@ 134

Script_6: @ 134
	CheckItem 0x1d3, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1aa
	UnkFunct2 0x3, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1aa
	CheckFlag 0x81
	CompareLastResultJump LESSER, Script_branch_1aa
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	SetVarItem 0x1, 0x1d3
	Message 0x6
	CloseMsgOnKeyPress
	PlayFanfare 0x5fb
	FadeScreen 0x6, 0x1, 0x0, 0x7fff
	ResetScreen
	RemovePeople 0x6
	WaitFanfare 0x5fb
	FadeScreen 0x6, 0x1, 0x1, 0x7fff
	ResetScreen
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1aa

Script_branch_1aa: @ 1aa
	End
@ 1ac

@ end_0x1ac
