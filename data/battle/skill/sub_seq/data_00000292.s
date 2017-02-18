.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_17 0x1
	Cmd_e
@ c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000292.bin", 0xc, 0xc4 - 0xc


@ end_0xc4
