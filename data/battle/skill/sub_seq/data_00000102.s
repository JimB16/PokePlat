.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x1b7, 0x11, 0xff, 0xff
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000102.bin", 0x18, 0x44 - 0x18


@ end_0x44
