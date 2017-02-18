.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_274
	JumpIfPkmnBattleData Eq, Target_1, 0x1a, 0x19, Script_branch_274
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x19, Script_branch_274
	JumpIfPkmnBattleData Eq, Target_1, 0x1a, 0x79, Script_branch_274
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x79, Script_branch_274
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_274
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_274
	JumpIfPkmnBattleData Ne, Target_1, 0x1a, 0x0, Script_branch_d4
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x0, Script_branch_274
Script_branch_d4: @ d4
	Cmd_3c_AddNewScript 0x4c
	Cmd_39 Store, Var_0x2b, Var_RoundNr
	Cmd_32 0x14, Var_0x2b, 0x1
	Cmd_3a 0x7, 0x1, 0x48, 0x2b
	Cmd_3a 0x7, 0x2, 0x48, 0x2b
	Cmd_3a 0x11, 0x1, 0x1a, 0x9
	Cmd_3a 0x11, 0x2, 0x1a, 0x2b
	Cmd_3a 0x7, 0x1, 0x1a, 0x2b
	Cmd_3a 0x7, 0x2, 0x1a, 0x9
	JumpIf Ne, Var_0x2b, 0x70, Script_branch_1e4
	Cmd_39 Store, Var_0x2b, Var_RoundNr
	Cmd_32 Add, Var_0x2b, 0x1
	Cmd_3a 0x7, 0x1, 0x59, 0x2b
	ChangePkmnBattleData Store, Target_1, 0x60, 0x0
	ChangePkmnBattleData Store, Target_1, 0x61, 0x0
Script_branch_1e4: @ 1e4
	JumpIf Ne, Var_0x9, 0x70, Script_branch_254
	Cmd_39 Store, Var_0x2b, Var_RoundNr
	Cmd_32 Add, Var_0x2b, 0x1
	Cmd_3a 0x7, 0x2, 0x59, 0x2b
	ChangePkmnBattleData Store, Target_2, 0x60, 0x0
	ChangePkmnBattleData Store, Target_2, 0x61, 0x0
Script_branch_254: @ 254
	Cmd_12 0x22f, 0x2, 0x1
	Cmd_e
@ 268


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000143.bin", 0x268, 0x274 - 0x268


Script_branch_274: @ 274
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 288

@ end_0x288
