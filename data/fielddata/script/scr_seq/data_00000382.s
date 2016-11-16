.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	Cmd_2f2
	End
@ 12

Script_2: @ 12
	PlayFanfare 0x5dc
	LockAll
	If 0x4055, 0x5
	CompareLastResultJump EQUAL, Script_branch_84
	Cmd_317 0x8004, 0x8005, 0x8006
	If 0x8005, 0xe8
	CompareLastResultJump EQUAL, Script_branch_59
	ApplyMovement 0x80, Movement_dc
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x80, Movement_e4
	WaitMovement
	Jump Script_branch_7a
@ 59

Script_branch_59: @ 59
	ApplyMovement 0x80, Movement_f0
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x80, Movement_f8
	ApplyMovement 0xff, Movement_11c
	WaitMovement
Script_branch_7a: @ 7a
	SetVar 0x4055, 0x5
	ReleaseAll
	End
@ 84

Script_3: @ 84
Script_branch_84: @ 84
	Cmd_317 0x8004, 0x8005, 0x8006
	If 0x8005, 0xe7
	CompareLastResultJump EQUAL, Script_branch_b6
	If 0x8005, 0xe8
	CompareLastResultJump EQUAL, Script_branch_c6
	ApplyMovement 0x80, Movement_104
	WaitMovement
	Jump Script_branch_d0
@ b6

Script_branch_b6: @ b6
	ApplyMovement 0x80, Movement_10c
	WaitMovement
	Jump Script_branch_d0
@ c6

Script_branch_c6: @ c6
	ApplyMovement 0x80, Movement_114
	WaitMovement
Script_branch_d0: @ d0
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ db

.byte 0x0 @ 0xdb

Movement_dc: @ dc
	SeeDown 0x1
	EndMovement 0x0
@ e4

Movement_e4: @ e4
	Move_6a 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ f0

Movement_f0: @ f0
	SeeRight 0x1
	EndMovement 0x0
@ f8

Movement_f8: @ f8
	Move_6a 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 104

Movement_104: @ 104
	SeeLeft 0x1
	EndMovement 0x0
@ 10c

Movement_10c: @ 10c
	SeeRight 0x1
	EndMovement 0x0
@ 114

Movement_114: @ 114
	SeeDown 0x1
	EndMovement 0x0
@ 11c

Movement_11c: @ 11c
	Move_6b 0x1
	SeeUp 0x1
	EndMovement 0x0
@ 128

@ end_0x128
