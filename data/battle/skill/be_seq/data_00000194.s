.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_1, PkmnBattleData_3b, 0x4000, Script_branch_50
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_3b, 0x4000
	Cmd_15 0x235, 0x2, 0x1
	Cmd_32 Store, Var_3, 0x2000005a
	end
@ 50

Script_branch_50: @ 50
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 64

@ end_0x64
