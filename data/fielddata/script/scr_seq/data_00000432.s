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
	.hword 0xfd13
@ 2a

Script_1: @ 2a
	End
@ 2c

Script_4: @ 2c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ApplyMovement 0xd, Movement_60
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xc, Movement_68
	WaitMovement
	Call Function_b6
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5e


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000432.bin", 0x5e, 0x60 - 0x5e


Movement_60: @ 60
	MoveDownFast 0x1
	EndMovement 0x0
@ 68

Movement_68: @ 68
	MoveDownFast 0x1
	EndMovement 0x0
@ 70

Script_7: @ 70
	LockAll
	ApplyMovement 0xd, Movement_bc
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xc, Movement_c4
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0xd, Movement_cc
	ApplyMovement 0xff, Movement_ec
	WaitMovement
	ApplyMovement 0xc, Movement_e4
	WaitMovement
	Call Function_b6
	ReleaseAll
	End
@ b6

Function_b6: @ b6
	SetFlag 0x7f
	Return
@ bc

Movement_bc: @ bc
	MoveRightFast 0x1
	EndMovement 0x0
@ c4

Movement_c4: @ c4
	MoveLeftFast 0x1
	EndMovement 0x0
@ cc

Movement_cc: @ cc
	WalkRightVeryFast 0x1
	MoveDownVeryFast 0x1
	Move_3f 0x2
	WalkLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ e4

Movement_e4: @ e4
	MoveDownFast 0x1
	EndMovement 0x0
@ ec

Movement_ec: @ ec
	WalkDownFast 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ f8

Script_2: @ f8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 10b

Script_3: @ 10b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11e

Script_5: @ 11e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x91
	CompareLastResultJump 0x1, Script_branch_142
	Call Function_14d
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 142

Script_branch_142: @ 142
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14d

Function_14d: @ 14d
	SetFlag 0x1a1
	SetFlag 0x91
	SetVar 0x4089, 0x1
	Return
@ 15d

Script_6: @ 15d
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x293
	CompareLastResultJump 0x1, Script_branch_1a8
	If 0x8005, 0x294
	CompareLastResultJump 0x1, Script_branch_1c2
	If 0x8005, 0x295
	CompareLastResultJump 0x1, Script_branch_1dc
	If 0x8005, 0x296
	CompareLastResultJump 0x1, Script_branch_1e2
	If 0x8005, 0x297
	CompareLastResultJump 0x1, Script_branch_1fc
	End
@ 1a8

Script_branch_1a8: @ 1a8
	ApplyMovement 0x12, Movement_238
	WaitMovement
	ApplyMovement 0xff, Movement_228
	WaitMovement
	Jump Script_branch_216
Script_branch_1c2: @ 1c2
	ApplyMovement 0x12, Movement_24c
	WaitMovement
	ApplyMovement 0xff, Movement_228
	WaitMovement
	Jump Script_branch_216
Script_branch_1dc: @ 1dc
	Jump Script_branch_216
Script_branch_1e2: @ 1e2
	ApplyMovement 0x12, Movement_25c
	WaitMovement
	ApplyMovement 0xff, Movement_230
	WaitMovement
	Jump Script_branch_216
Script_branch_1fc: @ 1fc
	ApplyMovement 0x12, Movement_26c
	WaitMovement
	ApplyMovement 0xff, Movement_230
	WaitMovement
	Jump Script_branch_216
Script_branch_216: @ 216
	Call Function_14d
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 227


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000432.bin", 0x227, 0x228 - 0x227


Movement_228: @ 228
	MoveDownFast 0x1
	EndMovement 0x0
@ 230

Movement_230: @ 230
	MoveUpFast 0x1
	EndMovement 0x0
@ 238

Movement_238: @ 238
	MoveUpFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	WalkUpFast 0x1
	EndMovement 0x0
@ 24c

Movement_24c: @ 24c
	MoveUpFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 25c

Movement_25c: @ 25c
	MoveDownFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 26c

Movement_26c: @ 26c
	MoveDownFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ 280

Script_8: @ 280
	CallMessageBox 0x7, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 297

Script_9: @ 297
	CallMessageBox 0x8, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 2ae

Script_10: @ 2ae
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x9, 0x800c
	CallStandard 0x7d0
	End
@ 2c3


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000432.bin", 0x2c3, 0x2c4 - 0x2c3


@ end_0x2c4
