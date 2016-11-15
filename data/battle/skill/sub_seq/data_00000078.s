.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_5d Script_branch_34
	Cmd_3c 0x4c
	Cmd_12 0xb2, 0xd, 0x1
	Cmd_e
	Cmd_1e 0x1e
	end
@ 34

Script_branch_34: @ 34
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 48

@ end_0x48
