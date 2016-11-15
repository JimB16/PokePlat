.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_3a 0x11, 0x2, 0x30, 0x9
	Cmd_32 0xd, 0x9, 0x2
	Cmd_4f 0x2, Var_2, 0x2f, 0x9, Script_branch_54
	Cmd_32 Cmd32_Store, 0x8, 0x14
	Jump Script_branch_64
@ 54

Script_branch_54: @ 54
	Cmd_32 Cmd32_Store, 0x8, 0xa
Script_branch_64: @ 64
	Cmd_26
	Cmd_f
	end
@ 70

@ end_0x70
