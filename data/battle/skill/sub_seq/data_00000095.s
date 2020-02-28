.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData 0xa, 0x7, 0x3b, 0x100
	Cmd_32 Store, Var_MoveEffectNr, 0x15
	Cmd_23_LoadSubSeq 0xc
@ 0x2c
@ 2c

