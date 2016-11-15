.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_9e Script_branch_14
	Cmd_26
	Cmd_f
	end
@ 14

Script_branch_14: @ 14
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 28

@ end_0x28
