.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_5d Script_branch_34
	AddNewScript 76
	Cmd_12 0xb2, 0xd, 0x1, 0xff
	Cmd_e
	Cmd_1e 0x1e
	end
@ 34

Script_branch_34: @ 34
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x48
@ 48

