.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0xc6
	Cmd_12 0x252, 0x30, 0xff, 0xff, 0xff
	Cmd_e
@ 24


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000207.bin", 0x24, 0x78 - 0x24


@ end_0x78
