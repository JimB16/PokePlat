.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	If 0x40dd, 0x0
	CompareLastResultJump 0x1, Script_branch_48
	StorePokeColosseumLost 0x4000
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_4a
	CallBTowerFunctions 0x37, 0x0, 0x4000
	CopyVar 0x4020, 0x4000
	CallBTowerFunctions 0x37, 0x1, 0x4000
	CopyVar 0x4021, 0x4000
Script_branch_48: @ 48
	End
@ 4a

Script_branch_4a: @ 4a
	CallBTowerFunctions 0x37, 0x0, 0x4000
	CopyVar 0x4021, 0x4000
	CallBTowerFunctions 0x37, 0x1, 0x4000
	CopyVar 0x4020, 0x4000
	End
@ 68

Script_2: @ 68
	If 0x40dd, 0x0
	CompareLastResultCall 0x5, Script_branch_7f
	RemovePeople2 0x2
	RemovePeople2 0x3
	End
@ 7f

Script_branch_7f: @ 7f
	RemovePeople2 0xff
	CheckPersonPosition 0x8, 0x0, 0x0
	Return
@ 8d

Script_3: @ 8d
	LockAll
	Call Function_c9
	Call Function_12b
	Call Function_14f
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x14b, 0x0, 0x7, 0x5, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ c9

Function_c9: @ c9
	PrepareDoorAnimation 0x0, 0x0, 0x3, 0x2, 0x4d
	PrepareDoorAnimation 0x0, 0x0, 0xe, 0x2, 0x4e
	OpenDoor 0x4d
	OpenDoor 0x4e
	WaitAction 0x4d
	WaitAction 0x4e
	ApplyMovement 0x0, Movement_174
	ApplyMovement 0x1, Movement_174
	WaitMovement
	AddPeople2 0x2
	AddPeople2 0x3
	ApplyMovement 0x2, Movement_180
	ApplyMovement 0x3, Movement_180
	WaitMovement
	CloseDoor 0x4d
	CloseDoor 0x4e
	WaitAction 0x4d
	WaitAction 0x4e
	WaitClose 0x4d
	WaitClose 0x4e
	Return
@ 12b

Function_12b: @ 12b
	ApplyMovement 0x0, Movement_1ac
	ApplyMovement 0x2, Movement_188
	ApplyMovement 0x1, Movement_1cc
	ApplyMovement 0x3, Movement_194
	WaitMovement
	Return
@ 14f

Function_14f: @ 14f
	ApplyMovement 0x0, Movement_1ec
	ApplyMovement 0x1, Movement_1ec
	ApplyMovement 0x2, Movement_1a0
	ApplyMovement 0x3, Movement_1a0
	WaitMovement
	Return
@ 173


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000370.bin", 0x173, 0x174 - 0x173


Movement_174: @ 174
	WalkDownFast 0x3
	SeeUp 0x1
	EndMovement 0x0
@ 180

Movement_180: @ 180
	WalkDownFast 0x2
	EndMovement 0x0
@ 188

Movement_188: @ 188
	WalkDownFast 0x1
	WalkRightFast 0x5
	EndMovement 0x0
@ 194

Movement_194: @ 194
	WalkDownFast 0x1
	WalkLeftFast 0x5
	EndMovement 0x0
@ 1a0

Movement_1a0: @ 1a0
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1ac

Movement_1ac: @ 1ac
	WalkRightFast 0x5
	WalkUpFast 0x1
	Move_3f 0x1
	SeeRight 0x1
	Move_3e 0x1
	SeeUp 0x1
	Move_3e 0x1
	EndMovement 0x0
@ 1cc

Movement_1cc: @ 1cc
	WalkLeftFast 0x5
	WalkUpFast 0x1
	Move_3f 0x1
	SeeLeft 0x1
	Move_3e 0x1
	SeeUp 0x1
	Move_3e 0x1
	EndMovement 0x0
@ 1ec

Movement_1ec: @ 1ec
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 1f8

@ end_0x1f8
