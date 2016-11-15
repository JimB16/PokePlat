.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, 0x1a, 0x0
Script_branch_10: @ 10
	JumpIf TstEq, 0x2b, 0x1, Script_branch_78
	Cmd_12 0x461, 0x24, 0xe
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0x6, 0x40
	Cmd_3c 0x2
	JumpIfPkmnBattleData Eq, 0xff, 0x2f, 0x0, Script_branch_ac
Script_branch_78: @ 78
	Cmd_32 Cmd32_Add, 0x1a, 0x1
	Cmd_32 0xf, 0x2b, 0x1
	JumpIf Ne, 0x2b, 0x0, Script_branch_10
Script_branch_ac: @ ac
	end
@ b0

@ end_0xb0
