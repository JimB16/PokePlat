.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x100000, Script_branch_2c
	Cmd_32 Cmd32_Orr, Var_2, 0x40000046
	end
@ 2c

Script_branch_2c: @ 2c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 40

@ end_0x40
