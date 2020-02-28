.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_33 Script_branch_a8, Script_branch_f0, Script_branch_f4
	JumpIf Ne, 0x5, 0x1, Script_branch_2c
	Cmd_11
	Cmd_e
Script_branch_2c: @ 2c
	JumpIf Ne, 0x5, 0x1, Script_branch_4c
	Cmd_17 0x1
	Cmd_e
Script_branch_4c: @ 4c
	JumpIf TstNe, 0x3c, 0x2, Script_branch_94
	Cmd_47 0x7, 0x2b
	Cmd_e
	JumpIf TstEq, 0x3c, 0x80, Script_branch_94
	Cmd_32 Orr, 0x3c, 0x2
Script_branch_94: @ 94
	Cmd_14
	Cmd_e
	Cmd_1e 0x1e
	end
@ a8

Script_branch_a8: @ a8
	JumpIf Ne, 0x5, 0x1, Script_branch_c4
	Cmd_11
	Cmd_e
Script_branch_c4: @ c4
	JumpIf TstNe, 0x6, 0x200000, Script_branch_f0
	Cmd_1e 0x1e
	Cmd_14
	Cmd_e
	Cmd_1e 0x1e
Script_branch_f0: @ f0
	end
@ f4

Script_branch_f4: @ f4
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x108
@ 108

