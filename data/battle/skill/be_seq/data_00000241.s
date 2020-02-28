.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_97 Script_branch_24
	Cmd_11
	Cmd_e
	Cmd_17 0x1
	Cmd_e
	Cmd_25 0x0
@ 24

Script_branch_24: @ 24
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x38
@ 38

