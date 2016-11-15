.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_8c
	JumpIfPkmnBattleData TstNe, 0x2, 0x3b, 0x200000, Script_branch_8c
	JumpIf TstNe, 0xa, 0x10001, Script_branch_8c
	JumpIfPkmnBattleData Eq, 0x2, 0x1a, 0x79, Script_branch_8c
	Cmd_3c 0x4c
	Cmd_34 0xa, 0x2, 0x3b, 0x200000
	Cmd_12 0x3f4, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 8c

Script_branch_8c: @ 8c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ a0

@ end_0xa0
