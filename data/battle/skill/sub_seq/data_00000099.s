.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, Target_6, MAGIC_GUARD, Script_branch_1a8
	JumpIf TstNe, Var_Weather, 0x7000, Script_branch_98
	Cmd_a6 0x0, Target_6, 0x6a, Script_branch_98
	Cmd_37 0x0, Target_6, LEVITATE, Script_branch_158
	JumpIfPkmnBattleData Eq, Target_6, PkmnBattleData_Type1, FLYING, Script_branch_158
	JumpIfPkmnBattleData Eq, Target_6, PkmnBattleData_Type2, FLYING, Script_branch_158
	JumpIfPkmnBattleData TstNe, Target_6, PkmnBattleData_3b, 0x8000000, Script_branch_158
Script_branch_98: @ 98
	Cmd_a0 0x6, 0x19
	JumpIf Eq, Var_0x9, 0x2, Script_branch_100
	JumpIf Eq, Var_0x9, 0x1, Script_branch_f0
	Cmd_12 0x429, 0x1, 0x6
	Cmd_e
@ e0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000099.bin", 0xe0, 0xf0 - 0xe0


Script_branch_f0: @ f0
	Cmd_3c_AddNewScript 0x16
	Jump Script_branch_108
@ 100

Script_branch_100: @ 100
	Cmd_3c_AddNewScript 0x2f
Script_branch_108: @ 108
	Cmd_69 0x6, Script_branch_158
	Cmd_39 Store, Var_0x14, Var_0x13
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x1ad, 0x2, 0x6
	Cmd_e
@ 150


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000099.bin", 0x150, 0x158 - 0x150


Script_branch_158: @ 158
	Cmd_b4 0x6, Script_branch_1a8
	Cmd_39 Store, Var_0x14, Var_0x13
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
	Cmd_12 0x437, 0x2, 0x6
	Cmd_e
@ 1a0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000099.bin", 0x1a0, 0x1a8 - 0x1a0


Script_branch_1a8: @ 1a8
	end
@ 1ac

@ end_0x1ac
