.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x6f, 0x2, 0x1
	Cmd_e
@ 14


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000028.bin", 0x14, 0x30 - 0x14


@ end_0x30
