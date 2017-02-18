.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x268, 0xa, 0x1, 0x1
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000144.bin", 0x18, 0x2c - 0x18


@ end_0x2c
