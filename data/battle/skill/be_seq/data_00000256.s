.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x1000, Script_branch_b4
	Cmd_a6 0x0, Target_1, 0x63, Script_branch_64
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_3b, 0x80
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Orr, Var_6, 0x23
	end
@ 64

Script_branch_64: @ 64
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_3b, 0x80
	ChangePkmnBattleData Orr, Target_1, 0x3c, 0x80
	Cmd_3c_AddNewScript 0xd9
	Cmd_36 0x1, 0x1
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_bc
Script_branch_b4: @ b4
	Cmd_26
	Cmd_f
Script_branch_bc: @ bc
	ChangePkmnBattleData Bic, Target_1, PkmnBattleData_3b, 0x200400c0
	Cmd_3c_AddNewScript 0x103
	end
@ dc

@ end_0xdc
