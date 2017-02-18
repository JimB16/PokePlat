.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_11
	Cmd_e
@ 8


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000173.bin", 0x8, 0x40 - 0x8


@ end_0x40
