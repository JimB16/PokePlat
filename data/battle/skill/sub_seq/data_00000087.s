.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_64 Script_branch_1c
	Cmd_3c 0x4c
	Cmd_3c 0x39
	end
@ 1c

Script_branch_1c: @ 1c
	Cmd_32 Cmd32_Orr, 0xa, 0x40
	end
@ 30

@ end_0x30
