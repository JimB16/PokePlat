.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_57 Script_branch_44
	Cmd_3c 0x4c
	Cmd_12 0x344, 0xa, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Cmd32_Orr, 0xa, 0x80000000
	end
@ 44

Script_branch_44: @ 44
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 58

@ end_0x58
