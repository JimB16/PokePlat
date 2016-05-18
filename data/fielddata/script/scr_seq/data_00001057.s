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


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00001057.bin", 0x3a, 0x3c - 0x3a


@ end_0x3c
