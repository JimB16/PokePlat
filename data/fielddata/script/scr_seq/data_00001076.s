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
	script Script_12
	.hword 0xfd13
@ 32

Script_11: @ 32
	End
@ 34

Script_10: @ 34
	CheckStatusSolaceonEvent 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x5, Script_branch_47
	End
@ 47

Script_branch_47: @ 47
	ReleaseOw 0x3, 0x3
	End
@ 4f

Script_1: @ 4f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 62

Script_2: @ 62
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x4, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_88
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 88

Script_branch_88: @ 88
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 93

Script_3: @ 93
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a6

Script_4: @ a6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b9

Script_5: @ b9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cc

Script_6: @ cc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePoketchApp 0x9, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_118
	StoreSinPokemonSeen 0x800c
	If 0x800c, 0x32
	CompareLastResultJump 0x0, Script_branch_10d
	Message 0xa
	SetVar 0x8004, 0x9
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10d

Script_branch_10d: @ 10d
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 118

Script_branch_118: @ 118
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 123

Script_7: @ 123
	CallMessageBox 0xc, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 13a

Script_8: @ 13a
	CallMessageBox 0xd, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 151

Script_9: @ 151
	CallMessageBox 0xe, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 168

Script_12: @ 168
	LockAll
	ApplyMovement 0xff, Movement_218
	WaitMovement
	CallStandard 0x7fa
	CheckSpritePosition 0x8004, 0x8005
	ChangeOwPosition 0x12, 0x8004, 0x295
	ClearFlag 0x21e
	AddPeople 0x12
	Lock 0x12
	ApplyMovement 0xff, Movement_228
	ApplyMovement 0x12, Movement_1e8
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x12, Movement_1f0
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1
	ApplyMovement 0x12, Movement_208
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x12, Movement_210
	WaitMovement
	RemovePeople 0x12
	CallStandard 0x7fb
	SetVar 0x4073, 0x1
	ReleaseAll
	End
@ 1e7

.byte 0x0 @ 0x1e7

Movement_1e8: @ 1e8
	WalkDownVeryFast  0x7
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	MoveLeftVeryFast 0x1
	Move_3f 0x1
	MoveRightVeryFast 0x1
	Move_3f 0x1
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 208

Movement_208: @ 208
	Exclamation 0x1
	EndMovement 0x0
@ 210

Movement_210: @ 210
	WalkUpVeryFast  0x7
	EndMovement 0x0
@ 218

Movement_218: @ 218
	Move_3f 0x1
	Exclamation 0x1
	Move_3f 0x3
	EndMovement 0x0
@ 228

Movement_228: @ 228
	SeeUp 0x1
	EndMovement 0x0
@ 230

@ end_0x230
