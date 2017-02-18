.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, Target_1, 0x4f, 0x0, Script_branch_90
	Cmd_37 0x0, Target_1, LEVITATE, Script_branch_90
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_3b, 0x400, Script_branch_90
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_3b, 0x8000000
	ChangePkmnBattleData Store, Target_1, 0x4f, 0x5
	Cmd_15 0x409, 0x2, 0x1
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x2000005a
	end
@ 90

Script_branch_90: @ 90
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ a4

@ end_0xa4
