.include "source/macros_asm_.s"


Script_1: @ 0
	JumpIf Eq, 0x5, 0x1, Script_branch_1c
	Cmd_3c 0x4c
Script_branch_1c: @ 1c
	end
@ 20

@ end_0x20
