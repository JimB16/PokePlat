.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_40
	Cmd_5e Script_branch_40
	AddNewScript 76
	Cmd_12 0x181, 0xa, 0x1, 0xff
	Cmd_e
	Cmd_1e 0x1e
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x54
@ 54

