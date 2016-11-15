.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_78
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x8000000, Script_branch_78
	JumpIfPkmnBattleData TstEq, 0x2, 0x34, 0x7, Script_branch_78
	Cmd_3c 0x4c
	Cmd_34 0xa, 0x2, 0x35, 0x8000000
	Cmd_12 0x19b, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 78

Script_branch_78: @ 78
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 8c

@ end_0x8c
