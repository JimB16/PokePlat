.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_9d Script_branch_1c
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x80000090
	end
@ 1c

Script_branch_1c: @ 1c
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x30
@ 30

