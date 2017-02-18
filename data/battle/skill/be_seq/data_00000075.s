.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x1000, Script_branch_6c
	Cmd_a6 0x0, Target_1, 0x63, Script_branch_50
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Orr, Var_6, 0x23
	end
@ 50

Script_branch_50: @ 50
	Cmd_3c_AddNewScript 0xd9
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_94
Script_branch_6c: @ 6c
	Cmd_32 Add, Var_1, 0x1
	Cmd_26
	Cmd_f
	Cmd_32 Store, Var_3, 0x80000008
Script_branch_94: @ 94
	Cmd_3c_AddNewScript 0x103
	end
@ a0

@ end_0xa0
