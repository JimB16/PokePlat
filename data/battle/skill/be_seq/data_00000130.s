.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0x3b, 0x1, Script_branch_38
	Cmd_32 Orr, 0x6, 0x800
	Cmd_32 Store, Var_Damage, 0xffffffec
	end
@ 38

Script_branch_38: @ 38
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x4c
@ 4c

