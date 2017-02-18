.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_170
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x19, Script_branch_170
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x79, Script_branch_170
	JumpIfPkmnBattleData Eq, Target_1, 0x1a, 0x79, Script_branch_170
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x0, Script_branch_170
	Cmd_3c_AddNewScript 0x4c
	Cmd_39 Store, Var_0x2b, Var_RoundNr
	Cmd_32 0x14, Var_0x2b, 0x1
	Cmd_3a 0x7, 0x1, 0x48, 0x2b
	Cmd_3a 0x11, 0x2, 0x1a, 0x2b
	Cmd_3a 0x7, 0x1, 0x1a, 0x2b
	JumpIf Ne, Var_0x2b, 0x70, Script_branch_148
	Cmd_39 Store, Var_0x2b, Var_RoundNr
	Cmd_32 Add, Var_0x2b, 0x1
	Cmd_3a 0x7, 0x1, 0x59, 0x2b
	ChangePkmnBattleData Store, Target_1, 0x60, 0x0
	ChangePkmnBattleData Store, Target_1, 0x61, 0x0
Script_branch_148: @ 148
	Cmd_12 0x20b, 0x20, 0x1, 0x2, 0x2
	Cmd_e
@ 164


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000135.bin", 0x164, 0x170 - 0x164


Script_branch_170: @ 170
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 184

@ end_0x184
