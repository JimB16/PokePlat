.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_e8
	Cmd_d2 0x2, Script_branch_e8
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x79, Script_branch_e8
	JumpIfPkmnBattleData Ne, Target_2, 0x51, 0x0, Script_branch_e8
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_e8
	JumpIfPkmnBattleData Ne, Target_2, 0x56, 0x0, Script_branch_e8
	JumpIfPkmnBattleData Ne, Target_2, 0x55, 0x0, Script_branch_e8
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_3b, 0x4000000
	ChangePkmnBattleData Store, Target_2, 0x51, 0x5
	Cmd_12 0x46f, 0x2, 0x2
	Cmd_e
@ dc


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000218.bin", 0xdc, 0xe8 - 0xdc


Script_branch_e8: @ e8
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ end_0xfc
@ fc

