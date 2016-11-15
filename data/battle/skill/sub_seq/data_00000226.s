.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_3c 0x93
	JumpIf TstEq, 0x6, 0x400000, Script_branch_24
	Cmd_3c 0x1f
Script_branch_24: @ 24
	end
@ 28

@ end_0x28
