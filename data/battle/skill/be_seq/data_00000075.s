.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_6c
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_50
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Orr, 0x6, 0x23
	end
@ 50

Script_branch_50: @ 50
	AddNewScript 217
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_94
Script_branch_6c: @ 6c
	Cmd_32 Add, Var_1, 0x1
	Cmd_26
	Cmd_f_CalcDamage
	Cmd_32 Store, Var_3, 0x80000008
Script_branch_94: @ 94
	AddNewScript 259
	end
@ 0xa0
@ a0

