.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_3: @ 12
	UnkFunct2 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_35
	CheckFlag 0x11e
	CompareLastResultJump EQUAL, Script_branch_35
	ClearFlag 0x24e
	End
@ 35

Script_branch_35: @ 35
	SetFlag 0x24e
	End
@ 3b

Script_1: @ 3b
	CheckFlag 0x8e
	CompareLastResultJump EQUAL, Script_branch_48
	End
@ 48

Script_branch_48: @ 48
	SetFlag 0x24e
	RemovePeople 0x0
	ClearFlag 0x8e
	End
@ 56

Script_2: @ 56
Script_4: @ 56
	LockAll
	SetVar 0x4118, 0x0
	Call Function_e9
	Call Function_104
	PlayCry 0x1ed, 0x0
	WaitCry
	Call Function_16f
	PlayCry 0x1ed, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	SetFlag 0x8e
	WildBattle2 0x1ed, 0x50
	ClearFlag 0x8e
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_df
	CheckWildBattle2 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_d0
	If 0x4056, 0x0
	CompareLastResultCall EQUAL, Script_branch_c8
	SetFlag 0x11e
	ReleaseAll
	End
@ c8

Script_branch_c8: @ c8
	SetVar 0x4056, 0x1
	Return
@ d0

Script_branch_d0: @ d0
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ClearFlag 0x24e
	ReleaseAll
	End
@ df

Script_branch_df: @ df
	ClearFlag 0x24e
	LostGoPc
	ReleaseAll
	End
@ e9

Function_e9: @ e9
	ApplyMovement 0xff, Movement_f8
	WaitMovement
	Return
@ f5

.byte 0x0 @ 0xf5
.byte 0x0 @ 0xf6
.byte 0x0 @ 0xf7

Movement_f8: @ f8
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ 104

Function_104: @ 104
	CheckSpritePosition 0x8004, 0x8005
	CopyVar 0x8008, 0x8004
	If 0x8008, 0x1e
	CompareLastResultJump EQUAL, Script_branch_139
	If 0x8008, 0x1f
	CompareLastResultJump EQUAL, Script_branch_14b
	If 0x8008, 0x20
	CompareLastResultJump EQUAL, Script_branch_15d
Script_branch_137: @ 137
	Return
@ 139

Script_branch_139: @ 139
	ApplyMovement 0xff, Movement_17c
	WaitMovement
	Jump Script_branch_137
@ 149

.byte 0x2 @ 0x149
.byte 0x0 @ 0x14a

Script_branch_14b: @ 14b
	ApplyMovement 0xff, Movement_18c
	WaitMovement
	Jump Script_branch_137
@ 15b

.byte 0x2 @ 0x15b
.byte 0x0 @ 0x15c

Script_branch_15d: @ 15d
	ApplyMovement 0xff, Movement_194
	WaitMovement
	Jump Script_branch_137
@ 16d

.byte 0x2 @ 0x16d
.byte 0x0 @ 0x16e

Function_16f: @ 16f
	ApplyMovement 0xff, Movement_1a4
	WaitMovement
	Return
@ 17b

.byte 0x0 @ 0x17b

Movement_17c: @ 17c
	WalkUpFast 0x4
	WalkRightFast 0x1
	SeeUp 0x1
	EndMovement 0x0
@ 18c

Movement_18c: @ 18c
	WalkUpFast 0x4
	EndMovement 0x0
@ 194

Movement_194: @ 194
	WalkUpFast 0x4
	WalkLeftFast 0x1
	SeeUp 0x1
	EndMovement 0x0
@ 1a4

Movement_1a4: @ 1a4
	WalkUpFast 0x2
	EndMovement 0x0
@ 1ac

@ end_0x1ac
