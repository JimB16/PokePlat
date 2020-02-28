.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_64 Script_branch_1c
	AddNewScript 76
	AddNewScript 57
	end
@ 1c

Script_branch_1c: @ 1c
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x30
@ 30

