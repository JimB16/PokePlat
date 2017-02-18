.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_c3 0x5, 0x1, 0x29
	Cmd_c3 0x5, 0x0, 0x60
	Cmd_1d
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000006.bin", 0x28, 0x64 - 0x28


@ end_0x64
