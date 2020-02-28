.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_74 0x1, 0x1, Script_branch_24
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x20000078
	end
@ 24

Script_branch_24: @ 24
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x38
@ 38

