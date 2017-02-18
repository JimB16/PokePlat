.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0x93
	JumpIf TstEq, Var_6, 0x400000, Script_branch_24
	Cmd_3c_AddNewScript 0x1f
Script_branch_24: @ 24
	end
@ 28

@ end_0x28
