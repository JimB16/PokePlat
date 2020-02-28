.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Orr, 0x6, 0x8000
	Cmd_26
	Cmd_7c
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x20000066
	Cmd_32 Orr, 0x6, 0x10000
	end
@ 0x3c
@ 3c

