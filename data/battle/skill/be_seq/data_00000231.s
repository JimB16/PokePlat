.include "macros/script_seq.s"


Script_1: @ 0
	LoadMoveData MoveData_Power
	Cmd_39 Store, Var_0x1e, Var_0x9
	JumpIf Eq, Var_0x43, 0x0, Script_branch_4c
	Cmd_39 Store, Var_0x1e, Var_0x9
	Cmd_32 0xc, Var_0x1e, 0x2
Script_branch_4c: @ 4c
	Cmd_26
	Cmd_f
	end
@ 58

@ end_0x58
