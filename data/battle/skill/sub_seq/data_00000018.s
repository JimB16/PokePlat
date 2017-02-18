.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_5, 0x7, Script_branch_250
	JumpIf Ne, Var_5, 0x4, Script_branch_e0
	Cmd_37 0x0, Target_7, INSOMNIA, Script_branch_32c
	Cmd_37 0x0, Target_7, VITAL_SPIRIT, Script_branch_32c
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_80
	Cmd_37 0x0, Target_7, LEAF_GUARD, Script_branch_32c
Script_branch_80: @ 80
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_44c
	Cmd_37 0x0, Target_7, SOUNDPROOF, Script_branch_c0
	JumpIf TstNe, Var_Weather, 0xf00, Script_branch_494
Script_branch_c0: @ c0
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_3b8
	Jump Script_branch_250
@ e0

Script_branch_e0: @ e0
	Cmd_a1 0x0, Target_7, INSOMNIA, Script_branch_32c
	Cmd_a1 0x0, Target_7, VITAL_SPIRIT, Script_branch_32c
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x0|Sunny_Day|Drought, Script_branch_138
	Cmd_a1 0x0, Target_7, LEAF_GUARD, Script_branch_32c
Script_branch_138: @ 138
	JumpIf Ne, Var_5, 0x2, Script_branch_160
	Cmd_a1 0x0, Target_7, SHIELD_DUST, Script_branch_3b8
Script_branch_160: @ 160
	JumpIf Ne, Var_5, 0x1, Script_branch_17c
	Cmd_11
	Cmd_e
@ 17c

Script_branch_17c: @ 17c
	JumpIf Eq, Var_5, 0x3, Script_branch_19c
	Cmd_d2 0x7, Script_branch_3b8
Script_branch_19c: @ 19c
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_44c
	Cmd_37 0x0, Target_7, SOUNDPROOF, Script_branch_1dc
	JumpIf TstNe, Var_Weather, 0xf00, Script_branch_494
Script_branch_1dc: @ 1dc
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_StatusEffect, 0x0, Script_branch_3b8
	JumpIf Eq, Var_5, 0x3, Script_branch_250
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_3b8
	JumpIf TstNe, Var_0xd, 0x8, Script_branch_500
	JumpIf Ne, Var_5, 0x1, Script_branch_250
	Cmd_17 0x1
	Cmd_e
@ 250

Script_branch_250: @ 250
	Cmd_45 0x7, 0x1
	Cmd_e
@ 260


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000018.bin", 0x260, 0x32c - 0x260


Script_branch_32c: @ 32c
	JumpIf Eq, Var_5, 0x2, Script_branch_548
	JumpIf Eq, Var_5, 0x3, Script_branch_548
	JumpIf Eq, Var_5, 0x4, Script_branch_378
	Cmd_11
	Cmd_e
@ 370


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000018.bin", 0x370, 0x378 - 0x370


Script_branch_378: @ 378
	Cmd_12 0x149, 0xb, 0x7, 0x7
	Jump Script_branch_52c
@ 394


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000018.bin", 0x394, 0x3b8 - 0x394


Script_branch_3b8: @ 3b8
	JumpIf Eq, Var_5, 0x2, Script_branch_548
	JumpIf Eq, Var_5, 0x3, Script_branch_548
	JumpIf Eq, Var_5, 0x4, Script_branch_548
	Cmd_1e
	Cmd_1e
	LoadMoveData MoveData_Flag1
	JumpIf Eq, Var_0x9, 0x4, Script_branch_43c
	JumpIf Eq, Var_0x9, 0x8, Script_branch_43c
	Cmd_3c_AddNewScript 0x4b
	Jump Script_branch_548
@ 43c

Script_branch_43c: @ 43c
	Cmd_3c_AddNewScript 0xb0
	Jump Script_branch_548
@ 44c

Script_branch_44c: @ 44c
	JumpIf Eq, Var_5, 0x2, Script_branch_548
	JumpIf Eq, Var_5, 0x3, Script_branch_548
	Cmd_1e
	Cmd_1e
	Cmd_12 0x39, 0x2, 0x7
	Jump Script_branch_52c
@ 494

Script_branch_494: @ 494
	JumpIf Eq, Var_5, 0x2, Script_branch_548
	JumpIfPkmnBattleData TstNe, Target_7, PkmnBattleData_35, 0x70, Script_branch_4e0
	Cmd_1e
	Cmd_1e
	Cmd_12 0x146, 0x2, 0x7
	Jump Script_branch_52c
@ 4e0

Script_branch_4e0: @ 4e0
	Cmd_1e
	Cmd_1e
	Cmd_12 0x143, 0x2, 0x7
	Jump Script_branch_52c
@ 500

Script_branch_500: @ 500
	JumpIf Eq, Var_5, 0x2, Script_branch_548
	Cmd_1e
	Cmd_1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_52c: @ 52c
	Cmd_e
@ 530


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000018.bin", 0x530, 0x548 - 0x530


Script_branch_548: @ 548
	end
@ 54c

@ end_0x54c
