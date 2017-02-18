.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1e
	Cmd_f
	Cmd_1f 0x1, 0x5ec
	Cmd_12 0x35a, 0x33, 0x1, 0x1, 0xff
	Cmd_e
@ 30


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000269.bin", 0x30, 0x68 - 0x30


@ end_0x68
