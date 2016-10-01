.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9d2
	SetFlag 0x28e
	End
@ 14

Script_2: @ 14
	LockAll
	ApplyMovement 0x0, Movement_158
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_160
	WaitMovement
	TrainerBattle 0x39e, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_150
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_168
	WaitMovement
	ApplyMovement 0x4, Movement_1bc
	WaitMovement
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_1cc
	WaitMovement
	TrainerBattle 0x39f, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_150
	Message 0x3
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x0, Movement_174
	ApplyMovement 0x4, Movement_1f4
	WaitMovement
	Message 0x4
	ApplyMovement 0x4, Movement_1d4
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_17c
	WaitMovement
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_190
	ApplyMovement 0xff, Movement_1a4
	WaitMovement
	PlayFanfare 0x603
	WaitFanfare 0x603
	ApplyMovement 0x4, Movement_1dc
	WaitMovement
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_1e4
	WaitMovement
	PlayFanfare 0x603
	WaitFanfare 0x603
	ApplyMovement 0xe, Movement_200
	ApplyMovement 0xff, Movement_1b4
	WaitMovement
	Message 0x8
	Message 0x9
	CloseMsgOnKeyPress
	ApplyMovement 0xe, Movement_208
	ApplyMovement 0xf, Movement_210
	ApplyMovement 0x10, Movement_21c
	WaitMovement
	RemovePeople 0xe
	RemovePeople 0x0
	RemovePeople 0x4
	RemovePeople 0xf
	RemovePeople 0x10
	SetVar 0x40ad, 0x1
	ReleaseAll
	End
@ 150

Script_branch_150: @ 150
	LostGoPc
	ReleaseAll
	End
@ 156

.byte 0x0 @ 0x156
.byte 0x0 @ 0x157

Movement_158: @ 158
	MoveDownFast 0x1
	EndMovement 0x0
@ 160

Movement_160: @ 160
	WalkDownFast 0x1
	EndMovement 0x0
@ 168

Movement_168: @ 168
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 174

Movement_174: @ 174
	Exclamation 0x1
	EndMovement 0x0
@ 17c

Movement_17c: @ 17c
	MoveUpFast 0x1
	Move_3f 0x2
	MoveDownFast 0x1
	Move_3f 0x2
	EndMovement 0x0
@ 190

Movement_190: @ 190
	WalkDownFast 0x2
	Move_3f 0x1
	WalkDownFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 1a4

Movement_1a4: @ 1a4
	Move_3f 0x2
	WalkLeftFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 1b4

Movement_1b4: @ 1b4
	MoveUpFast 0x1
	EndMovement 0x0
@ 1bc

Movement_1bc: @ 1bc
	MoveLeftFast 0x1
	Move_3f 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 1cc

Movement_1cc: @ 1cc
	WalkDownFast 0x1
	EndMovement 0x0
@ 1d4

Movement_1d4: @ 1d4
	MoveUpFast 0x1
	EndMovement 0x0
@ 1dc

Movement_1dc: @ 1dc
	MoveRightFast 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	WalkLeftFast 0x1
	WalkDownFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1f4

Movement_1f4: @ 1f4
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 200

Movement_200: @ 200
	MoveDownFast 0x1
	EndMovement 0x0
@ 208

Movement_208: @ 208
	WalkUpFast 0x7
	EndMovement 0x0
@ 210

Movement_210: @ 210
	WalkRightFast 0x1
	WalkUpFast 0x7
	EndMovement 0x0
@ 21c

Movement_21c: @ 21c
	Move_3f 0x1
	WalkLeftFast 0x1
	WalkUpFast 0x7
	EndMovement 0x0
@ 22c

@ end_0x22c
