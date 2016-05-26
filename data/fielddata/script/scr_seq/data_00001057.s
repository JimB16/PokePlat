.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x4095, 0x1
	CompareLastResultJump 0x4, Script_branch_2f
	Jump Script_branch_21
@ 21

Script_branch_21: @ 21
	SetVariableRival 0x0
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2f

Script_branch_2f: @ 2f
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a

.byte 0x0 @ 0x3a
.byte 0x0 @ 0x3b

@ end_0x3c
