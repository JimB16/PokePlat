.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Ne, Var_5, 0x6, Script_branch_60
	Cmd_37 0x0, Target_7, IMMUNITY, Script_branch_2c8
	Cmd_d3 0x27
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_cc
	Cmd_37 0x0, Target_7, LEAF_GUARD, Script_branch_2c8
	Jump Script_branch_cc
@ 60

Script_branch_60: @ 60
	Cmd_a1 0x0, Target_7, IMMUNITY, Script_branch_2c8
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_a4
	Cmd_a1 0x0, Target_7, LEAF_GUARD, Script_branch_2c8
Script_branch_a4: @ a4
	JumpIf Ne, Var_5, 0x2, Script_branch_cc
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_368
Script_branch_cc: @ cc
	JumpIf Ne, Var_5, 0x1, Script_branch_e8
	Cmd_11
	Cmd_e
@ e8

Script_branch_e8: @ e8
	JumpIf Eq, Var_5, 0x3, Script_branch_108
	Cmd_d2 0x7, Script_branch_368
Script_branch_108: @ 108
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Poisond, Script_branch_3d0
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Toxic, Script_branch_3d0
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, POISON, Script_branch_42c
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, POISON, Script_branch_42c
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, STEEL, Script_branch_42c
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, STEEL, Script_branch_42c
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_368
	JumpIf Eq, Var_5, 0x3, Script_branch_20c
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_368
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_49c
	JumpIf Ne, Var_5, 0x1, Script_branch_20c
	Cmd_17 0x1
	Cmd_e
@ 20c

Script_branch_20c: @ 20c
	Cmd_45 0x7, 0x2
	Cmd_e
@ 21c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000022.bin", 0x21c, 0x2c8 - 0x21c


Script_branch_2c8: @ 2c8
	JumpIf Eq, Var_5, 0x2, Script_branch_50c
	JumpIf Eq, Var_5, 0x3, Script_branch_50c
	JumpIf Eq, Var_5, 0x4, Script_branch_328
	JumpIf Eq, Var_5, 0x6, Script_branch_328
	Cmd_11
	Cmd_e
@ 320


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000022.bin", 0x320, 0x328 - 0x320


Script_branch_328: @ 328
	Cmd_12 0x28a, 0xb, 0x7, 0x7
	Jump Script_branch_4f0
@ 344


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000022.bin", 0x344, 0x368 - 0x344


Script_branch_368: @ 368
	JumpIf Eq, Var_5, 0x2, Script_branch_50c
	JumpIf Eq, Var_5, 0x3, Script_branch_50c
	JumpIf Eq, Var_5, 0x4, Script_branch_50c
	JumpIf Eq, Var_5, 0x6, Script_branch_50c
	Cmd_1e
	Cmd_1e
	Cmd_3c_AddNewScript 0x4b
	Jump Script_branch_50c
@ 3d0

Script_branch_3d0: @ 3d0
	JumpIf Eq, Var_5, 0x2, Script_branch_50c
	JumpIf Eq, Var_5, 0x3, Script_branch_50c
	JumpIf Eq, Var_5, 0x6, Script_branch_50c
	Cmd_1e
	Cmd_1e
	Cmd_12 0x4c, 0x2, 0x7
	Jump Script_branch_4f0
@ 42c

Script_branch_42c: @ 42c
	JumpIf Eq, Var_5, 0x2, Script_branch_50c
	JumpIf Eq, Var_5, 0x4, Script_branch_50c
	JumpIf Eq, Var_5, 0x6, Script_branch_50c
	JumpIf Eq, Var_5, 0x3, Script_branch_50c
	Cmd_1e
	Cmd_1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_4f0
@ 49c

Script_branch_49c: @ 49c
	JumpIf Eq, Var_5, 0x2, Script_branch_50c
	JumpIf Eq, Var_5, 0x4, Script_branch_50c
	JumpIf Eq, Var_5, 0x6, Script_branch_50c
	Cmd_1e
	Cmd_1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_4f0: @ 4f0
	Cmd_e
@ 4f4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000022.bin", 0x4f4, 0x50c - 0x4f4


Script_branch_50c: @ 50c
	end
@ 510

@ end_0x510
