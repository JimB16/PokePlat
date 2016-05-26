.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d

Script_2: @ 1d
	LockAll
	ApplyMovement 0x1, Movement_264
	WaitMovement
	CallStandard 0x7fa
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x5
	CompareLastResultCall 0x1, Script_branch_14e
	If 0x8005, 0x6
	CompareLastResultCall 0x1, Script_branch_15a
	If 0x8005, 0x7
	CompareLastResultCall 0x1, Script_branch_166
	If 0x8005, 0x8
	CompareLastResultCall 0x1, Script_branch_172
	If 0x8005, 0x9
	CompareLastResultCall 0x1, Script_branch_17e
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1
	CloseMsgOnKeyPress
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump 0x1, Script_branch_b3
	If 0x800c, 0x186
	CompareLastResultJump 0x1, Script_branch_c1
	Jump Script_branch_a5
@ a3

.byte 0x2 @ 0xa3
.byte 0x0 @ 0xa4

Script_branch_a5: @ a5
	TrainerBattle 0x1d6, 0x0
	Jump Script_branch_cf
@ b1

.byte 0x2 @ 0xb1
.byte 0x0 @ 0xb2

Script_branch_b3: @ b3
	TrainerBattle 0x1d7, 0x0
	Jump Script_branch_cf
@ bf

.byte 0x2 @ 0xbf
.byte 0x0 @ 0xc0

Script_branch_c1: @ c1
	TrainerBattle 0x1d8, 0x0
	Jump Script_branch_cf
@ cd

.byte 0x2 @ 0xcd
.byte 0x0 @ 0xce

Script_branch_cf: @ cf
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_148
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x2
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x5
	CompareLastResultCall 0x1, Script_branch_18a
	If 0x8005, 0x6
	CompareLastResultCall 0x1, Script_branch_196
	If 0x8005, 0x7
	CompareLastResultCall 0x1, Script_branch_1a2
	If 0x8005, 0x8
	CompareLastResultCall 0x1, Script_branch_1ae
	If 0x8005, 0x9
	CompareLastResultCall 0x1, Script_branch_1ba
	PlayFanfare 0x603
	RemovePeople 0x1
	WaitFanfare 0x603
	SetVar 0x407b, 0x2
	ReleaseAll
	End
@ 148

Script_branch_148: @ 148
	LostGoPc
	ReleaseAll
	End
@ 14e

Script_branch_14e: @ 14e
	ApplyMovement 0x1, Movement_1d4
	WaitMovement
	Return
@ 15a

Script_branch_15a: @ 15a
	ApplyMovement 0x1, Movement_1e4
	WaitMovement
	Return
@ 166

Script_branch_166: @ 166
	ApplyMovement 0x1, Movement_1f4
	WaitMovement
	Return
@ 172

Script_branch_172: @ 172
	ApplyMovement 0x1, Movement_1fc
	WaitMovement
	Return
@ 17e

Script_branch_17e: @ 17e
	ApplyMovement 0x1, Movement_20c
	WaitMovement
	Return
@ 18a

Script_branch_18a: @ 18a
	ApplyMovement 0x1, Movement_21c
	WaitMovement
	Return
@ 196

Script_branch_196: @ 196
	ApplyMovement 0x1, Movement_22c
	WaitMovement
	Return
@ 1a2

Script_branch_1a2: @ 1a2
	ApplyMovement 0x1, Movement_23c
	WaitMovement
	Return
@ 1ae

Script_branch_1ae: @ 1ae
	ApplyMovement 0x1, Movement_244
	WaitMovement
	Return
@ 1ba

Script_branch_1ba: @ 1ba
	ApplyMovement 0x1, Movement_254
	WaitMovement
	Return
@ 1c6

.byte 0x0 @ 0x1c6
.byte 0x0 @ 0x1c7
.byte 0x12 @ 0x1c8
.byte 0x0 @ 0x1c9
.byte 0x4 @ 0x1ca
.byte 0x0 @ 0x1cb
.byte 0x4b @ 0x1cc
.byte 0x0 @ 0x1cd
.byte 0x1 @ 0x1ce
.byte 0x0 @ 0x1cf
.byte 0xfe @ 0x1d0
.byte 0x0 @ 0x1d1
.byte 0x0 @ 0x1d2
.byte 0x0 @ 0x1d3

Movement_1d4: @ 1d4
	WalkLeftVeryFast 0x2
	WalkUpVeryFast  0x2
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	WalkLeftVeryFast 0x2
	WalkUpVeryFast  0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 1f4

Movement_1f4: @ 1f4
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 1fc

Movement_1fc: @ 1fc
	WalkLeftVeryFast 0x2
	WalkDownVeryFast  0x1
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 20c

Movement_20c: @ 20c
	WalkLeftVeryFast 0x2
	WalkDownVeryFast  0x2
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 21c

Movement_21c: @ 21c
	WalkRightVeryFast 0x2
	WalkDownVeryFast  0x2
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 22c

Movement_22c: @ 22c
	WalkRightVeryFast 0x2
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 23c

Movement_23c: @ 23c
	WalkRightVeryFast 0x4
	EndMovement 0x0
@ 244

Movement_244: @ 244
	WalkRightVeryFast 0x2
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 254

Movement_254: @ 254
	WalkRightVeryFast 0x2
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 264

Movement_264: @ 264
	Move_3f 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 274

@ end_0x274
