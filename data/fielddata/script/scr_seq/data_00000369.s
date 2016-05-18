.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	End
@ 10

Script_2: @ 10
	If 0x40dc, 0x0
	CompareLastResultCall 0x5, Script_branch_1f
	End
@ 1f

Script_branch_1f: @ 1f
	RemovePeople2 0xff
	Return
@ 25

Script_3: @ 25
	LockAll
	Call Function_8e
	CheckIdPlayer 0x800c, 0x4
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_f0
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_10a
	If 0x8008, 0x3
	CompareLastResultJump 0x1, Script_branch_124
	Jump Script_branch_d6
Script_branch_66: @ 66
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x14a, 0x0, 0x7, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 8e

Function_8e: @ 8e
	PrepareDoorAnimation 0x0, 0x0, 0x2, 0x2, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x0, Movement_140
	WaitMovement
	AddPeople2 0xff
	ApplyMovement 0xff, Movement_14c
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return
@ c2


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000369.bin", 0xc2, 0xd6 - 0xc2


Script_branch_d6: @ d6
	ApplyMovement 0x0, Movement_178
	ApplyMovement 0xff, Movement_188
	WaitMovement
	Jump Script_branch_66
	End
@ f0

Script_branch_f0: @ f0
	ApplyMovement 0x0, Movement_19c
	ApplyMovement 0xff, Movement_1ac
	WaitMovement
	Jump Script_branch_66
	End
@ 10a

Script_branch_10a: @ 10a
	ApplyMovement 0x0, Movement_1c0
	ApplyMovement 0xff, Movement_1d0
	WaitMovement
	Jump Script_branch_66
	End
@ 124

Script_branch_124: @ 124
	ApplyMovement 0x0, Movement_1e4
	ApplyMovement 0xff, Movement_1f4
	WaitMovement
	Jump Script_branch_66
	End
@ 13e


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000369.bin", 0x13e, 0x140 - 0x13e


Movement_140: @ 140
	WalkDownFast 0x3
	SeeUp 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	WalkDownFast 0x2
	EndMovement 0x0
@ 154


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000369.bin", 0x154, 0x178 - 0x154


Movement_178: @ 178
	WalkRightFast 0x4
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 188

Movement_188: @ 188
	WalkDownFast 0x1
	WalkRightFast 0x4
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 19c

Movement_19c: @ 19c
	WalkRightFast 0x8
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1ac

Movement_1ac: @ 1ac
	WalkDownFast 0x1
	WalkRightFast 0x8
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1c0

Movement_1c0: @ 1c0
	WalkRightFast 0xc
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1d0

Movement_1d0: @ 1d0
	WalkDownFast 0x1
	WalkRightFast 0xc
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	WalkRightFast 0x10
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1f4

Movement_1f4: @ 1f4
	WalkDownFast 0x1
	WalkRightFast 0x10
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 208

@ end_0x208
