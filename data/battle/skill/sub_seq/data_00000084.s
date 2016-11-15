.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x10001, Script_branch_4c
	Cmd_61 Script_branch_4c
	Cmd_3c 0x4c
	Cmd_12 0x18e, 0x23, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 4c

Script_branch_4c: @ 4c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 60

@ end_0x60
