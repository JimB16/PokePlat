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
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 23

Script_4: @ 23
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 36

Script_2: @ 36
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	SetVar 0x40a9, 0x2
	ChangeOwPosition 0x5, 0x14, 0x19
	ChangeOwMovement 0x5, 0x10
	ReleaseOw 0x5, 0x2
	ClearFlag 0x29f
	AddPeople 0x5
	ApplyMovement 0x5, Movement_148
	WaitMovement
	CallStandard 0x807
	If 0x8005, 0x18
	CompareLastResultCall EQUAL, Script_branch_109
	If 0x8005, 0x19
	CompareLastResultCall EQUAL, Script_branch_11d
	If 0x8005, 0x1a
	CompareLastResultCall EQUAL, Script_branch_131
	Message 0x0
	ApplyMovement 0x5, Movement_184
	WaitMovement
	Message 0x1
	ApplyMovement 0x5, Movement_18c
	WaitMovement
	Message 0x2
	SetVar 0x8004, 0x44
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f2
	CallStandard 0x7fc
	Call Function_e5
	CallStandard 0x808
	ReleaseAll
	End
@ e5

Function_e5: @ e5
	SetFlag 0x160
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	Return
@ f2

Script_branch_f2: @ f2
	Call Function_100
	CallStandard 0x808
	ReleaseAll
	End
@ 100

Function_100: @ 100
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	Return
@ 109

Script_branch_109: @ 109
	ApplyMovement 0x5, Movement_15c
	ApplyMovement 0xff, Movement_194
	WaitMovement
	Return
@ 11d

Script_branch_11d: @ 11d
	ApplyMovement 0x5, Movement_16c
	ApplyMovement 0xff, Movement_194
	WaitMovement
	Return
@ 131

Script_branch_131: @ 131
	ApplyMovement 0x5, Movement_174
	ApplyMovement 0xff, Movement_194
	WaitMovement
	Return
@ 145

.byte 0x0 @ 0x145
.byte 0x0 @ 0x146
.byte 0x0 @ 0x147

Movement_148: @ 148
	WalkLeftVeryFast 0x4
	Move_3f 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 15c

Movement_15c: @ 15c
	WalkLeftVeryFast 0x4
	WalkUpVeryFast  0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 16c

Movement_16c: @ 16c
	WalkLeftVeryFast 0x4
	EndMovement 0x0
@ 174

Movement_174: @ 174
	WalkLeftVeryFast 0x4
	WalkDownVeryFast  0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 184

Movement_184: @ 184
	MoveDownFast 0x1
	EndMovement 0x0
@ 18c

Movement_18c: @ 18c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 194

Movement_194: @ 194
	Move_3f 0x4
	MoveRightFast 0x1
	EndMovement 0x0
@ 1a0

Script_3: @ 1a0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x160
	CompareLastResultJump LESSER, Script_branch_1be
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1be

Script_branch_1be: @ 1be
	Message 0x5
	SetVar 0x8004, 0x44
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1f0
	CallStandard 0x7fc
	Call Function_e5
	ReleaseAll
	End
@ 1f0

Script_branch_1f0: @ 1f0
	Call Function_100
	ReleaseAll
	End
@ 1fa

.byte 0x0 @ 0x1fa
.byte 0x0 @ 0x1fb

@ end_0x1fc
