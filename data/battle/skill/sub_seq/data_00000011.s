.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x359, 0x1c, 0x1, 0xff
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000011.bin", 0x18, 0x7c - 0x18


@ end_0x7c
