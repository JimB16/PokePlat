.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0x6, 0x10000, Script_branch_30
	Cmd_12 0x2e, 0x6, 0xff
	Cmd_e
	Cmd_1e 0x1e
Script_branch_30: @ 30
	end
@ 0x34
@ 34

