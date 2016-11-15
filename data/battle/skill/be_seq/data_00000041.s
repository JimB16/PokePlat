.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0x3b, 0x1, Script_branch_38
	Cmd_32 Cmd32_Orr, 0x6, 0x800
	Cmd_32 Cmd32_Store, 0xe, 0xffffffd8
	end
@ 38

Script_branch_38: @ 38
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 4c

@ end_0x4c
