.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3a 0x11, 0x1, 0x30, 0x20
	Cmd_55 0x20, 0x2
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_11
	Cmd_e
@ 38


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000154.bin", 0x38, 0x68 - 0x38


@ end_0x68
