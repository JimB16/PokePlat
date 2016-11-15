.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Store, Var_3, 0x80000008
	Cmd_32 Cmd32_Orr, 0x6, 0x4
	Cmd_32 Cmd32_Store, 0x8, 0xa
	JumpIfPkmnBattleData TstEq, 0x2, 0x3b, 0x40, Script_branch_58
	Cmd_32 Cmd32_Store, 0x8, 0x14
Script_branch_58: @ 58
	Cmd_26
	Cmd_f
	end
@ 64

@ end_0x64
