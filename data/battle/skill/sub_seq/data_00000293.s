.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_188
	JumpIfPkmnBattleData Ne, Target_2, PkmnBattleData_Species, 0x1ec, Script_branch_188
	JumpIfPkmnBattleData Eq, Target_2, 0x62, 0x0, Script_branch_188
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x1000000, Script_branch_188
	JumpIfPkmnBattleData Ne, Target_2, PkmnBattleData_StatusEffect, 0x0|Frozen, Script_branch_188
	ChangePkmnBattleData Store, Target_2, 0x62, 0x0
	Cmd_32 Store, Var_0x2b, 0x0
	JumpIfPkmnBattleData TstNe, Target_2, 0x33, 0x1, Script_branch_c8
	Cmd_dc 0x1ec, Var_0x2b, 0x18
	Jump Script_branch_fc
@ c8

Script_branch_c8: @ c8
	Cmd_dc 0x1ec, Var_0x2b, 0x19
	JumpIf Ne, Var_0x2b, 0x0, Script_branch_fc
	Cmd_dc 0x1ec, Var_0x2b, 0x18
Script_branch_fc: @ fc
	Cmd_32 Orr, Var_0x3c, 0x8000000
	Cmd_3a 0x7, 0x2, 0x1a, 0x9
	Cmd_dc 0x1ec, Var_0x2b, 0x6
	Cmd_3a 0x7, 0x2, 0x1b, 0x9
	Cmd_dc 0x1ec, Var_0x2b, 0x7
	Cmd_3a 0x7, 0x2, 0x1c, 0x9
	Cmd_39 Store, Var_0x14, Var_TargetPkmn
	Cmd_3c_AddNewScript 0x106
	Cmd_dd 0x2
Script_branch_188: @ 188
	end
@ 18c

@ end_0x18c
