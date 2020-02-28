.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x10001, Script_branch_48
	Cmd_59 Script_branch_48
	AddNewScript 76
	Cmd_12 0x16e, 0xa, 0x2, 0xff
	Cmd_e
	Cmd_1e 0x1e
	end
@ 48

Script_branch_48: @ 48
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x5c
@ 5c

