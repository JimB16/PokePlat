.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_MoveEffectNr, 0x18
	AddNewScript 12
	Cmd_32 Orr, 0x6, 0x4001
	Cmd_32 Orr, 0x3c, 0x80
	Cmd_32 Store, Var_MoveEffectNr, 0xf
	AddNewScript 12
	Cmd_32 Store, Var_MoveEffectNr, 0x10
	AddNewScript 12
	Cmd_32 Bic, 0x3c, 0x2
	Cmd_32 Bic, 0x3c, 0x80
	end
@ 0x8c
@ 8c

