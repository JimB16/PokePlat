.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0x6, 0x40, Script_branch_44
	Cmd_d7 0xff
	Cmd_19 0xff
	Cmd_e
	JumpIf Eq, 0x45, 0x0, Script_branch_44
	Cmd_3c 0x108
Script_branch_44: @ 44
	Cmd_32 Cmd32_Bic, 0x6, 0x40
	Cmd_1b 0xff
	Cmd_e
	Cmd_1a 0xff
	Cmd_1c 0xff
	JumpIf Gt, 0x20, 0x0, Script_branch_94
	Cmd_39 0x7, 0x42, 0x20
Script_branch_94: @ 94
	end
@ 98

@ end_0x98
