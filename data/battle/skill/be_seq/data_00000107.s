.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_50
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x8000000, Script_branch_50
	JumpIfPkmnBattleData TstEq, Target_2, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_50
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x20000021
	end
@ 50

Script_branch_50: @ 50
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 64

@ end_0x64
