.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_1dc
	Cmd_d2 0x2, Script_branch_1dc
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x79, Script_branch_1dc
	JumpIfPkmnBattleData Eq, Target_1, 0x1a, 0x79, Script_branch_1dc
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_1dc
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_1dc
	JumpIfPkmnBattleData Ne, Target_2, 0x56, 0x0, Script_branch_1dc
	JumpIfPkmnBattleData Ne, Target_2, 0x55, 0x0, Script_branch_1dc
	Cmd_7f Script_branch_1d8, Script_branch_1a4
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x1fe, 0x2, 0x1
	Cmd_e
@ d8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000134.bin", 0xd8, 0x1a4 - 0xd8


Script_branch_1a4: @ 1a4
	Cmd_11
	Cmd_e
@ 1ac


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000134.bin", 0x1ac, 0x1d8 - 0x1ac


Script_branch_1d8: @ 1d8
	end
@ 1dc

Script_branch_1dc: @ 1dc
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 1f0

@ end_0x1f0
