.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x18, 0x2, 0x2
	Cmd_e
@ 14


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000176.bin", 0x14, 0x30 - 0x14


@ end_0x30
