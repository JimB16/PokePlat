.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0x39
	Cmd_47 0x3, Var_0x2b
	Cmd_e
@ 18


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000104.bin", 0x18, 0x19c - 0x18


@ end_0x19c
