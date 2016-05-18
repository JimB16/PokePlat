.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	End
@ c

Script_2: @ c
	End
@ e


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000074.bin", 0xe, 0x10 - 0xe


@ end_0x10
