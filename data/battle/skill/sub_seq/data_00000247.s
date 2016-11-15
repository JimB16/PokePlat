.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_b5 Script_branch_10
	Cmd_3c 0x19
Script_branch_10: @ 10
	Cmd_b5 Script_branch_20
	Cmd_3c 0xe
Script_branch_20: @ 20
	end
@ 24

@ end_0x24
