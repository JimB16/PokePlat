.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x10001, Script_branch_48
	Cmd_59 Script_branch_48
	Cmd_3c 0x4c
	Cmd_12 0x16e, 0xa, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 48

Script_branch_48: @ 48
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 5c

@ end_0x5c
