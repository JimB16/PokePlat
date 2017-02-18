.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_13 0x351, 0x2, 0x2
	Cmd_e
@ 14


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000229.bin", 0x14, 0x20 - 0x14


@ end_0x20
