.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData 0xa, 0x1, 0x35, 0x40000000
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x40000010
	end
@ 0x28
@ 28

