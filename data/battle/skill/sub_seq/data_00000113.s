.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0x6, 0x4000, Script_branch_40
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x1c0, 0x6, 0xff
	Cmd_e
	Cmd_1e 0x1e
Script_branch_40: @ 40
	JumpIf TstNe, 0xa, 0x1fd849, Script_branch_60
	Cmd_17 0x1
	Cmd_e
Script_branch_60: @ 60
	end
@ 0x64
@ 64

