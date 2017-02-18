.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_39 Store, Var_StatusEffectDamage, Var_0x36
	JumpIf Eq, Var_StatusEffectDamage, 0x0, Script_branch_30
	Cmd_55 0x20, 0x2
Script_branch_30: @ 30
	Cmd_a6 0x1, Target_1, 0x7c, Script_branch_80
	Cmd_a8 Target_1, Var_0x9
	Cmd_32 Add, Var_0x9, 0x64
	Cmd_39 0xc, Var_StatusEffectDamage, Var_0x9
	Cmd_32 0xd, Var_StatusEffectDamage, 0x64
Script_branch_80: @ 80
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_32 Orr, Var_6, 0x40
	Cmd_37 0x0, Target_2, LIQUID_OOZE, Script_branch_138
	JumpIfPkmnBattleData Ne, Target_1, 0x50, 0x0, Script_branch_104
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x52, 0x2, 0x2
	Cmd_e
@ f8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000024.bin", 0xf8, 0x104 - 0xf8


Script_branch_104: @ 104
	Cmd_32 Store, Var_0x23, 0x179
	Cmd_12 0x41e, 0xa, 0x1, 0xff
	Cmd_e
@ 12c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000024.bin", 0x12c, 0x138 - 0x12c


Script_branch_138: @ 138
	Cmd_37 0x0, Target_1, MAGIC_GUARD, Script_branch_16c
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x2d0, 0x0
	Cmd_e
@ 164


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000024.bin", 0x164, 0x16c - 0x164


Script_branch_16c: @ 16c
	end
@ 170

@ end_0x170
