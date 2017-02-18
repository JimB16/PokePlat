.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_13 0x353, 0x1b, 0x1, 0x2
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000227.bin", 0x18, 0x9c - 0x18


@ end_0x9c
