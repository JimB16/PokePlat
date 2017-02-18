.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_3a 0x11, 0x1, 0x30, 0x20
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_55 0x20, 0x4
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x117, 0x2, 0x1
	Cmd_e
@ 6c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000043.bin", 0x6c, 0x78 - 0x6c


@ end_0x78
