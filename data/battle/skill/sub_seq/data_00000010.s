.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_2b
	Cmd_2c
	Cmd_2d 0x6
	Cmd_c1
	Cmd_bf 0x6
	Cmd_e
@ 20


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000010.bin", 0x20, 0x88 - 0x20


@ end_0x88
