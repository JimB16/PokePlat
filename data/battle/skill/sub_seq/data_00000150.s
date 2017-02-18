.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_13, 0xc, Script_branch_30
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_14, 0xc, Script_branch_bc
Script_branch_30: @ 30
	Cmd_3c_AddNewScript 0x4c
	Cmd_32 Orr, Var_6, 0x200000
	Cmd_32 Orr, Var_6, 0x4001
	Cmd_32 Orr, Var_0x3c, 0x80
	Cmd_32 Store, Var_MoveEffectNr, 0xf
	Cmd_3c_AddNewScript 0xc
	Cmd_32 Store, Var_MoveEffectNr, 0x10
	Cmd_3c_AddNewScript 0xc
	Cmd_32 Bic, Var_0x3c, 0x2
	Cmd_32 Bic, Var_0x3c, 0x80
	end
@ bc

Script_branch_bc: @ bc
	Cmd_11
	Cmd_e
@ c4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000150.bin", 0xc4, 0xfc - 0xc4


@ end_0xfc
