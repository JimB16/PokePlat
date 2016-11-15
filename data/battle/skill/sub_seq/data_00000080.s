.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_40
	Cmd_5e Script_branch_40
	Cmd_3c 0x4c
	Cmd_12 0x181, 0xa, 0x1
	Cmd_e
	Cmd_1e 0x1e
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 54

@ end_0x54
