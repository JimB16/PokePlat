.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0, 0x1, Script_branch_28
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x20000065
	end
@ 28

Script_branch_28: @ 28
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x3c
@ 3c

