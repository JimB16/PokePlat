.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Orr, 0x6, 0x800
	Cmd_38
	Cmd_a
	Cmd_5 0x3a
	Cmd_11
	Cmd_1 0x2b
	Cmd_e
	Cmd_39 0xc, 0xe, 0x9
	Cmd_32 0xd, Var_Damage, 0xa
	JumpIf Ne, Var_Damage, 0x0, Script_branch_74
	Cmd_32 Store, Var_Damage, 0x1
Script_branch_74: @ 74
	Cmd_32 0xc, Var_Damage, 0xffffffff
	end
@ 0x88
@ 88

