.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Orr, Var_6, 0x800
	Cmd_38 0xa, 0x5
	Cmd_3a 0x11, 0x1, 0x2b, 0xe
	Cmd_39 0xc, Var_Damage, Var_0x9
	Cmd_32 0xd, Var_Damage, 0xa
	JumpIf Ne, Var_Damage, 0x0, Script_branch_74
	Cmd_32 Store, Var_Damage, 0x1
Script_branch_74: @ 74
	Cmd_32 0xc, Var_Damage, 0xffffffff
	end
@ 88

@ end_0x88
