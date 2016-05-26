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
	script Script_9
	script Script_10
	script Script_11
	.hword 0xfd13
@ 2e

Script_1: @ 2e
	End
@ 30

Script_2: @ 30
	PlayFanfare 0x5dc
	LockAll
	ApplyMovement 0x7, Movement_5c
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x8, Movement_64
	WaitMovement
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5a

.byte 0x0 @ 0x5a
.byte 0x0 @ 0x5b

Movement_5c: @ 5c
	MoveRightFast 0x1
	EndMovement 0x0
@ 64

Movement_64: @ 64
	MoveLeftFast 0x1
	EndMovement 0x0
@ 6c

Script_3: @ 6c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40cf, 0x2
	CompareLastResultJump 0x4, Script_branch_99
	Message 0x2
	ApplyMovement 0x2, Movement_a4
	WaitMovement
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 99

Script_branch_99: @ 99
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a4

Movement_a4: @ a4
	SeeUp 0x1
	Move_3f 0x3
	EndMovement 0x0
@ b0

Script_4: @ b0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c3

Script_5: @ c3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d6

Script_6: @ d6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e9

Script_7: @ e9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fc

Script_8: @ fc
	CallMessageBox 0xc, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 113

Script_9: @ 113
	CallMessageBox 0xd, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 12a

Script_10: @ 12a
	CallMessageBox 0xe, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 141

Script_11: @ 141
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Cmd_31c 0x800c, 0x1ec
	If 0x800c, 0xff
	CompareLastResultJump 0x1, Script_branch_19d
	CheckPokeParty 0x800c, 0x1ec
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_19d
	CheckItem 0x1d2, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_1a8
	Message 0x9
	SetVar 0x8004, 0x1d2
	SetVar 0x8005, 0x1
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19d

Script_branch_19d: @ 19d
	Message 0xb
	Jump Script_branch_1b3
@ 1a6

.byte 0x2 @ 0x1a6
.byte 0x0 @ 0x1a7

Script_branch_1a8: @ 1a8
	Message 0xa
	Jump Script_branch_1b3
@ 1b1

.byte 0x2 @ 0x1b1
.byte 0x0 @ 0x1b2

Script_branch_1b3: @ 1b3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bb

.byte 0x0 @ 0x1bb

@ end_0x1bc
