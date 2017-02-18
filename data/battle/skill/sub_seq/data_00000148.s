.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, Target_7, PkmnBattleData_13, 0x0, Script_branch_30
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_14, 0x0, Script_branch_cc
Script_branch_30: @ 30
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_b8
	Cmd_32 Orr, Var_0x3c, 0x80
	Cmd_32 Store, Var_MoveEffectNr, 0x16
	Cmd_3c_AddNewScript 0xc
	Cmd_32 Orr, Var_6, 0x200000
	Cmd_32 Store, Var_MoveEffectNr, 0x17
	Cmd_3c_AddNewScript 0xc
	Cmd_32 Bic, Var_0x3c, 0x2
	Cmd_32 Bic, Var_0x3c, 0x80
	end
@ b8

Script_branch_b8: @ b8
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ cc

Script_branch_cc: @ cc
	Cmd_11
	Cmd_e
@ d4


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000148.bin", 0xd4, 0x10c - 0xd4


@ end_0x10c
