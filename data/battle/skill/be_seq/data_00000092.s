.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0x7, Script_branch_50
	JumpIf Eq, 0x1c, 0xd6, Script_branch_34
	Cmd_3c 0x14
Script_branch_34: @ 34
	Cmd_32 Cmd32_Orr, Var_3, 0x80000008
	Cmd_26
	Cmd_f
	end
@ 50

Script_branch_50: @ 50
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 64

@ end_0x64
