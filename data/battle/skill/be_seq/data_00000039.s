.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x1000, Script_branch_80
	JumpIf TstNe, Var_6, 0x200, Script_branch_80
	Cmd_a6 0x0, Target_1, 0x63, Script_branch_64
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Orr, Var_6, 0x23
	end
@ 64

Script_branch_64: @ 64
	Cmd_3c_AddNewScript 0xd9
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_98
Script_branch_80: @ 80
	Cmd_32 Add, Var_1, 0x1
	Cmd_26
	Cmd_f
Script_branch_98: @ 98
	Cmd_3c_AddNewScript 0x103
	end
@ a4

@ end_0xa4
