.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_80
	JumpIf TstNe, 0x6, 0x200, Script_branch_80
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_64
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Orr, 0x6, 0x23
	end
@ 64

Script_branch_64: @ 64
	AddNewScript 217
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_98
Script_branch_80: @ 80
	Cmd_32 Add, Var_1, 0x1
	Cmd_26
	Cmd_f_CalcDamage
Script_branch_98: @ 98
	AddNewScript 259
	end
@ 0xa4
@ a4

