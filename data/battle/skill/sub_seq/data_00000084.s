.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x10001, Script_branch_4c
	Cmd_61 Script_branch_4c
	AddNewScript 76
	Cmd_12 0x18e, 0x23, 0x2, 0xff, 0xff
	Cmd_e
	Cmd_1e 0x1e
	end
@ 4c

Script_branch_4c: @ 4c
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x60
@ 60

