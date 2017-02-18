.include "macros/script_seq.s"


Script_1: @ 0
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_35, 0x40000000
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x40000010
	end
@ 28

@ end_0x28
