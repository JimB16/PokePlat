.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_b4
	Cmd_a6 0x0, 0x1, 0x63, Script_branch_64
	ChangePkmnBattleData 0xa, 0x1, 0x3b, 0x40
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000000c
	Cmd_32 Orr, 0x6, 0x23
	end
@ 64

Script_branch_64: @ 64
	ChangePkmnBattleData 0xa, 0x1, 0x3b, 0x40
	ChangePkmnBattleData 0xa, 0x1, 0x3c, 0x40
	AddNewScript 217
	Cmd_36 0x1, 0x1
	JumpIf Eq, Var_TargetPkmn, 0xff, Script_branch_cc
Script_branch_b4: @ b4
	Cmd_32 Store, Var_3, 0x80000005
	Cmd_26
	Cmd_f_CalcDamage
Script_branch_cc: @ cc
	ChangePkmnBattleData 0xb, 0x1, 0x3b, 0x200400c0
	AddNewScript 259
	end
@ 0xec
@ ec

