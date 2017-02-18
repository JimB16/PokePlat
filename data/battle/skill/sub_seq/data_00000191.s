.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x340, 0x2, 0x1
	Cmd_e
@ 14


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000191.bin", 0x14, 0x28 - 0x14


@ end_0x28
