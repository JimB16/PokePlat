.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21

Script_2: @ 21
	LockAll
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_46
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_59
	End
@ 46

Script_3: @ 46
Script_branch_46: @ 46
	Cmd_A2
	Message 0xc
	FriendBT 0x5e
	CloseMsgOnKeyPress
	Cmd_2bb
	WarpLastElevator
	ReleaseAll
	End
@ 59

Script_branch_59: @ 59
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5f


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000000.bin", 0x5f, 0x60 - 0x5f


@ end_0x60
