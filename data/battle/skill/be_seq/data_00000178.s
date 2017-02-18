.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, Target_1, MULTITYPE, Script_branch_40
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_40
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x9000006f
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 54

@ end_0x54
