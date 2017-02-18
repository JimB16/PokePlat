.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x406, 0xa, 0xff, 0xff
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000169.bin", 0x18, 0x9c - 0x18


@ end_0x9c
