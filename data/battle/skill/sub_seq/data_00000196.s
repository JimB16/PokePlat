.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x458, 0xb, 0xff, 0x15
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000196.bin", 0x18, 0x24 - 0x18


@ end_0x24
