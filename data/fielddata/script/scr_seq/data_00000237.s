.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	.hword 0xfd13
@ 22

Script_1: @ 22
	LockAll
	ClearFlag 0x2ba
	AddPeople 0x1
	RemovePeople2 0x1
	ChangeOwPosition 0x0, 0x20, 0x22
	ReleaseOw 0x0, 0x0
	ChangeOwMovement 0x0, 0xe
	ClearFlag 0x1cd
	AddPeople 0x0
	LockCam 0x1e, 0x1e
	ApplyMovement 0xf1, Movement_16c
	WaitMovement
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x40c3, 0x2
	ApplyMovement 0x0, Movement_144
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	SetvarMtCoronet 0x4, 0x800c
	Return2 0x1e, 0x800c
Script_branch_88: @ 88
	SetvarMtCoronet 0x6, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_88
	RemovePeople 0x1
	ApplyMovement 0xf1, Movement_178
	WaitMovement
	ZoomCam
	ApplyMovement 0xff, Movement_13c
	ApplyMovement 0x0, Movement_14c
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_154
	WaitMovement
	Message 0x5
	SetFlag 0x29e
	Jump Script_branch_da
@ d8

.byte 0x2 @ 0xd8
.byte 0x0 @ 0xd9

Script_branch_da: @ da
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_fd
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_130
	End
@ fd

Script_branch_fd: @ fd
	Message 0x7
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Cmd_320
	CallEnd
	PortalEffect 0x1
	Warp 0x23d, 0x0, 0x37, 0x28, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 130

Script_branch_130: @ 130
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13b

.byte 0x0 @ 0x13b

Movement_13c: @ 13c
	MoveRightFast 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	WalkUpFast 0x4
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 154

Movement_154: @ 154
	MoveRightFast 0x1
	Move_3f 0x2
	MoveDownFast 0x1
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 16c

Movement_16c: @ 16c
	WalkRightFast 0x1
	WalkUpFast 0x5
	EndMovement 0x0
@ 178

Movement_178: @ 178
	WalkDownFast 0x5
	WalkLeftFast 0x1
	EndMovement 0x0
@ 184

Script_2: @ 184
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_fd
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1af
	End
@ 1af

Script_branch_1af: @ 1af
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ba

Script_3: @ 1ba
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1cd

Script_4: @ 1cd
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e0

Script_5: @ 1e0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f3

Script_6: @ 1f3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 206

Script_7: @ 206
	PlayFanfare 0x5dc
	LockAll
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 217

Script_8: @ 217
	PlayFanfare 0x5dc
	LockAll
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 228

@ end_0x228
