.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Orr, 0x6, 0x10
	Cmd_32 Cmd32_Store, 0x8, 0xa
	JumpIfPkmnBattleData TstEq, 0x2, 0x3b, 0x40000, Script_branch_48
	Cmd_32 Cmd32_Store, 0x8, 0x14
Script_branch_48: @ 48
	Cmd_32 Cmd32_Store, Var_3, 0x8200000d
	Cmd_26
	Cmd_f
	end
@ 64

@ end_0x64
