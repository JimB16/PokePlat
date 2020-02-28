.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x1000, Script_branch_40
	JumpIf TstNe, 0x6, 0x200, Script_branch_40
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x4000003f
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Orr, 0x6, 0x1
	end
@ 0x54
@ 54

