.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_b3
	Cmd_cd
	Cmd_e
@ c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000283.bin", 0xc, 0x20 - 0xc


@ end_0x20
