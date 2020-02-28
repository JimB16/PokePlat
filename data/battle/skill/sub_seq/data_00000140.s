.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_85 Script_branch_40
	Cmd_32 Store, 0x3a, 0x1
	AddNewScript 76
	Cmd_12 0x25e, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Jump Script_branch_5c
@ 40

Script_branch_40: @ 40
	JumpIf TstNe, 0xa, 0x1fd849, Script_branch_5c
	AddNewScript 76
Script_branch_5c: @ 5c
	end
@ 0x60
@ 60

