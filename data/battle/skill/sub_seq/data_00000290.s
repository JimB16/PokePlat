.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf TstNe, 0x2f, 0x2, Script_branch_1c
	Cmd_ca 0xff
Script_branch_1c: @ 1c
	Cmd_32 Cmd32_Bic, 0x2f, 0x2
	end
@ 30

@ end_0x30
