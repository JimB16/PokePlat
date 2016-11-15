.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_80 Script_branch_c
	end
@ c

Script_branch_c: @ c
	Cmd_32 Cmd32_Store, 0xa, 0x40
	end
@ 20

@ end_0x20
