.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_72 Script_branch_14
	Cmd_26
	Cmd_f
	end
@ 14

Script_branch_14: @ 14
	Cmd_39 Store, Var_0x14, Var_TargetPkmn
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x20000061
	Cmd_32 Orr, Var_6, 0x8000
	Cmd_32 Store, Var_0x3a, 0x1
	end
@ 58

@ end_0x58
