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
	SetFlag 0x9e6
	End
@ 1c

Script_2: @ 1c
	CheckFlag 0x994
	CompareLastResultCall EQUAL, Script_branch_9f
	Cmd_200 0x4000
	If 0x4000, 0x50
	CompareLastResultJump EQUAL, Script_branch_47
	If 0x4000, 0x15f
	CompareLastResultJump EQUAL, Script_branch_47
	End
@ 47

Script_branch_47: @ 47
	CheckFlag 0x3
	CompareLastResultJump EQUAL, Script_branch_9d
	CheckSpritePosition 0x4000, 0x4001
	If 0x4000, 0x12b
	CompareLastResultJump LESSER, Script_branch_9d
	If 0x4000, 0x132
	CompareLastResultJump GREATER, Script_branch_9d
	If 0x4001, 0x240
	CompareLastResultJump EQUAL, Script_branch_8e
	If 0x4001, 0x2a9
	CompareLastResultJump EQUAL, Script_branch_8e
	End
@ 8e

Script_branch_8e: @ 8e
	SetFlag 0x3
	SetFlag 0x994
	BikeRide
	RideBike2 0x1
	End
@ 9d

Script_branch_9d: @ 9d
	End
@ 9f

Script_branch_9f: @ 9f
	RideBike2 0x1
	Return
@ a4

Script_3: @ a4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b7

Script_4: @ b7
	CallMessageBox 0x1, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ ce

Script_5: @ ce
	CallMessageBox 0x2, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ e5

.byte 0x0 @ 0xe5
.byte 0x0 @ 0xe6
.byte 0x0 @ 0xe7

@ end_0xe8
