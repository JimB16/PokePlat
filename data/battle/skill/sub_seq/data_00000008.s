.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x2a, 0x0
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000008.bin", 0x10, 0x1c - 0x10


@ end_0x1c
