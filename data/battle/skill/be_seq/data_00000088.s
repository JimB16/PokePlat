.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_32 Cmd32_Orr, 0x6, 0x800
	Cmd_38 0xa, 0x5
	Cmd_3a 0x11, 0x1, 0x2b, 0xe
	Cmd_39 0xc, 0xe, 0x9
	Cmd_32 0xd, 0xe, 0xa
	JumpIf Ne, 0xe, 0x0, Script_branch_74
	Cmd_32 Cmd32_Store, 0xe, 0x1
Script_branch_74: @ 74
	Cmd_32 0xc, 0xe, 0xffffffff
	end
@ 88

@ end_0x88