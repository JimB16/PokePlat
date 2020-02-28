.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_20
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0xa0000086
	end
@ 20

Script_branch_20: @ 20
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x34
@ 34

