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
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_44
	Message 0x2
	Jump Script_branch_4f
@ 42

.byte 0x2 @ 0x42
.byte 0x0 @ 0x43

Script_branch_44: @ 44
	Message 0x3
	Jump Script_branch_4f
@ 4d

.byte 0x2 @ 0x4d
.byte 0x0 @ 0x4e

Script_branch_4f: @ 4f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

.byte 0x0 @ 0x57

@ end_0x58
