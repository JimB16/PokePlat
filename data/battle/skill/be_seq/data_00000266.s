.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0xc, 0x80, Script_branch_48
	Cmd_32 Cmd32_Orr, 0xc, 0x80
	Cmd_15 0x435, 0x1, 0x13
	Cmd_32 Cmd32_Store, Var_3, 0x2000005a
	end
@ 48

Script_branch_48: @ 48
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 5c

@ end_0x5c
