.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_57 Script_branch_44
	AddNewScript 76
	Cmd_12 0x344, 0xa, 0x1, 0xff
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
	end
@ 44

Script_branch_44: @ 44
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x58
@ 58

