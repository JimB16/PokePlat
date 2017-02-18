.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0x6b
	Cmd_12 0xac, 0x2, 0x1
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000108.bin", 0x1c, 0x30 - 0x1c


@ end_0x30
