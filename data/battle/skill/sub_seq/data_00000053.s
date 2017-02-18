.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0x4c
	Cmd_14
	Cmd_e
@ 10


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000053.bin", 0x10, 0x1c - 0x10


@ end_0x1c
