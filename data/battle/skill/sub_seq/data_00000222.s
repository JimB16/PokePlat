.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x4b6, 0x5, 0xff
	Cmd_e
@ 14


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000222.bin", 0x14, 0x64 - 0x14


@ end_0x64
