.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_8c
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_3b, 0x200000, Script_branch_8c
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_8c
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x79, Script_branch_8c
	Cmd_3c_AddNewScript 0x4c
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_3b, 0x200000
	Cmd_12 0x3f4, 0x2, 0x2
	Cmd_e
@ 80


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000163.bin", 0x80, 0x8c - 0x80


Script_branch_8c: @ 8c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ a0

@ end_0xa0
