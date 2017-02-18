.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_5, 0x1, Script_branch_1c
	Cmd_3c_AddNewScript 0x4c
Script_branch_1c: @ 1c
	end
@ 20

@ end_0x20
