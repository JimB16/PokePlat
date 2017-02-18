.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0x3b, 0x1, Script_branch_38
	Cmd_32 Orr, Var_6, 0x800
	Cmd_32 Store, Var_Damage, 0xffffffec
	end
@ 38

Script_branch_38: @ 38
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 4c

@ end_0x4c
