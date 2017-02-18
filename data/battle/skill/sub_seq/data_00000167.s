.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_a8
	Cmd_d2 0x2, Script_branch_a8
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x36, Script_branch_a8
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x79, Script_branch_a8
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_a8
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Store, Target_2, 0x1a, 0xf
	Cmd_12 0x3fd, 0xb, 0x2, 0x2
	Cmd_e
@ 9c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000167.bin", 0x9c, 0xa8 - 0x9c


Script_branch_a8: @ a8
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ bc

@ end_0xbc
