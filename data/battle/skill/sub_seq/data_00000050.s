.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_16 0xff, 0x120
	Cmd_3 0xff
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000050.bin", 0x18, 0x24 - 0x18


@ end_0x24
