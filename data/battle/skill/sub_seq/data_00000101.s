.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_6a Script_branch_b8
	Cmd_3c 0x4c
	Cmd_12 0x336, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Store, 0x23, 0xc3
	Cmd_32 Cmd32_Store, 0x25, 0x2b
	Cmd_32 Cmd32_Store, 0x27, 0x0
Script_branch_58: @ 58
	Cmd_6b 0x14
	Cmd_a1 0x1, 0xff, 0x2b, Script_branch_98
	Cmd_12 0x2b1, 0x25, 0xff
	Cmd_e
	Cmd_1e 0x1e
Script_branch_98: @ 98
	Cmd_32 Cmd32_Add, 0x27, 0x1
	Cmd_6c 0x27, Script_branch_58
	end
@ b8

Script_branch_b8: @ b8
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ cc

@ end_0xcc
