.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, Target_1, 0x50, 0x0, Script_branch_f0
	Cmd_39 Store, Var_StatusEffectDamage, Var_0x36
	JumpIf Eq, Var_StatusEffectDamage, 0x0, Script_branch_98
	Cmd_55 0x20, 0x2
	Cmd_a6 0x1, Target_1, 0x7c, Script_branch_98
	Cmd_a8 Target_1, Var_0x9
	Cmd_32 Add, Var_0x9, 0x64
	Cmd_39 0xc, Var_StatusEffectDamage, Var_0x9
	Cmd_32 0xd, Var_StatusEffectDamage, 0x64
Script_branch_98: @ 98
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_32 Orr, Var_6, 0x40
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x8b, 0x2, 0x2
	Cmd_e
@ e4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000033.bin", 0xe4, 0xf0 - 0xe4


Script_branch_f0: @ f0
	Cmd_32 Store, Var_0x23, 0x179
	Cmd_12 0x41e, 0xa, 0x1, 0xff
	Cmd_e
@ 118


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000033.bin", 0x118, 0x124 - 0x118


@ end_0x124
