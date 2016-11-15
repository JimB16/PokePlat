.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x3b, 0x10000, Script_branch_4c
	Cmd_34 0xa, 0x1, 0x3b, 0x10000
	Cmd_15 0x24b, 0x0
	Cmd_32 Cmd32_Store, Var_3, 0x2000005a
	end
@ 4c

Script_branch_4c: @ 4c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 60

@ end_0x60
