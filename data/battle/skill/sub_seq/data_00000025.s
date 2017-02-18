.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Ne, Var_5, 0x5, Script_branch_d4
	Cmd_37 0x0, Target_7, WATER_VEIL, Script_branch_350
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_58
	Cmd_37 0x0, Target_7, LEAF_GUARD, Script_branch_350
Script_branch_58: @ 58
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Burned, Script_branch_350
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, FIRE, Script_branch_350
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, FIRE, Script_branch_350
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_350
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_350
	Jump Script_branch_238
@ d4

Script_branch_d4: @ d4
	Cmd_a1 0x0, Target_7, WATER_VEIL, Script_branch_424
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_118
	Cmd_a1 0x0, Target_7, LEAF_GUARD, Script_branch_424
Script_branch_118: @ 118
	JumpIf Ne, Var_5, 0x2, Script_branch_140
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_354
Script_branch_140: @ 140
	JumpIf Ne, Var_5, 0x1, Script_branch_15c
	Cmd_11
	Cmd_e
@ 15c

Script_branch_15c: @ 15c
	JumpIf Eq, Var_5, 0x3, Script_branch_17c
	Cmd_d2 0x7, Script_branch_354
Script_branch_17c: @ 17c
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|Burned, Script_branch_394
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type1, FIRE, Script_branch_3dc
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_Type2, FIRE, Script_branch_3dc
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_354
	JumpIf Eq, Var_5, 0x3, Script_branch_238
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_354
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_49c
	JumpIf Ne, Var_5, 0x1, Script_branch_238
	Cmd_17 0x1
	Cmd_e
@ 238

Script_branch_238: @ 238
	JumpIf Ne, Var_5, 0x5, Script_branch_264
	Cmd_45 0x7, 0xa
	Cmd_e
@ 25c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000025.bin", 0x25c, 0x264 - 0x25c


Script_branch_264: @ 264
	Cmd_45 0x7, 0x3
	Cmd_e
@ 274


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000025.bin", 0x274, 0x350 - 0x274


Script_branch_350: @ 350
	end
@ 354

Script_branch_354: @ 354
	JumpIf Eq, Var_5, 0x2, Script_branch_4e4
	JumpIf Eq, Var_5, 0x3, Script_branch_4e4
	Cmd_1e
	Cmd_1e
	Cmd_3c_AddNewScript 0x4b
	Jump Script_branch_4e4
@ 394

Script_branch_394: @ 394
	JumpIf Eq, Var_5, 0x2, Script_branch_4e4
	JumpIf Eq, Var_5, 0x3, Script_branch_4e4
	Cmd_1e
	Cmd_1e
	Cmd_12 0x62, 0x2, 0x7
	Jump Script_branch_4c8
@ 3dc

Script_branch_3dc: @ 3dc
	JumpIf Eq, Var_5, 0x2, Script_branch_4e4
	JumpIf Eq, Var_5, 0x3, Script_branch_4e4
	Cmd_1e
	Cmd_1e
	Cmd_12 0x1b, 0x2, 0x7
	Jump Script_branch_4c8
@ 424

Script_branch_424: @ 424
	JumpIf Eq, Var_5, 0x2, Script_branch_4e4
	JumpIf Eq, Var_5, 0x3, Script_branch_4e4
	Cmd_11
	Cmd_e
@ 454


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000025.bin", 0x454, 0x49c - 0x454


Script_branch_49c: @ 49c
	JumpIf Eq, Var_5, 0x2, Script_branch_4e4
	Cmd_1e
	Cmd_1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_4c8: @ 4c8
	Cmd_e
@ 4cc


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000025.bin", 0x4cc, 0x4e4 - 0x4cc


Script_branch_4e4: @ 4e4
	end
@ 4e8

@ end_0x4e8
