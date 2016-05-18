.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	Cmd_151
	End
@ a


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000399.bin", 0xa, 0xc - 0xa


@ end_0xc
