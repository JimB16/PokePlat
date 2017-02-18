.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_130
	Cmd_3c_AddNewScript 0x4c
	Cmd_3a 0x11, 0x1, 0x2f, 0x9
	Cmd_3a 0x11, 0x2, 0x2f, 0x20
	Cmd_39 Add, Var_0x9, Var_StatusEffectDamage
	Cmd_32 0xd, Var_0x9, 0x2
	Cmd_32 Orr, Var_6, 0x40
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_3a 0x11, 0x1, 0x2f, 0x20
	Cmd_39 Sub, Var_StatusEffectDamage, Var_0x9
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_3c_AddNewScript 0x2
	Cmd_32 Orr, Var_6, 0x40
	Cmd_39 Store, Var_0x14, Var_TargetPkmn
	Cmd_3a 0x11, 0x2, 0x2f, 0x20
	Cmd_39 Sub, Var_StatusEffectDamage, Var_0x9
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x334, 0x0
	Cmd_e
@ 124


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000077.bin", 0x124, 0x130 - 0x124


Script_branch_130: @ 130
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 144

@ end_0x144
