.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_40
	JumpIfPkmnBattleData TstEq, 0x2, 0x34, 0x7, Script_branch_40
	Cmd_32 Store, Var_3, 0x2000003d
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 40

Script_branch_40: @ 40
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x3c, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
	end
@ 0x80
@ 80

