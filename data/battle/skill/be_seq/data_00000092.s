.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x7, Script_branch_50
	JumpIf Eq, 0x1c, 0xd6, Script_branch_34
	AddNewScript 20
Script_branch_34: @ 34
	Cmd_32 Orr, Var_3, 0x80000008
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 50

Script_branch_50: @ 50
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x64
@ 64

