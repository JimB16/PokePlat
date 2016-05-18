.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000070.bin", 0x19, 0x1c - 0x19


@ end_0x1c
