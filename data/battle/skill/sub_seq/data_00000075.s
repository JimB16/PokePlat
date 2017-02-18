.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x31c, 0x0
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000075.bin", 0x10, 0x2c - 0x10


@ end_0x2c
