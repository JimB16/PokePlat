.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_35, 0x1000, Script_branch_40
	JumpIf TstNe, Var_6, 0x200, Script_branch_40
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000003f
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Orr, Var_6, 0x1
	end
@ 54

@ end_0x54
