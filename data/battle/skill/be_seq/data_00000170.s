.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Ne, Var_0x29, 0x0, Script_branch_44
	JumpIf Ne, Var_0x2a, 0x0, Script_branch_44
	Cmd_32 Store, Var_0x3a, 0x1
	Cmd_26
	Cmd_f
	end
@ 44

Script_branch_44: @ 44
	Cmd_32 Orr, Var_0xa, 0x20000
	Cmd_15 0x258, 0x2, 0x1
	end
@ 68

@ end_0x68
