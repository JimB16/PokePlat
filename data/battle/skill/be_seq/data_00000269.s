.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x1, Target_1, RECKLESS, Script_branch_24
	Cmd_32 Store, Var_0x8, 0xc
Script_branch_24: @ 24
	Cmd_32 Store, Var_3, 0x2000008a
	Cmd_26
	Cmd_f
	end
@ 40

@ end_0x40
