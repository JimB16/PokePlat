.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x9, 0x10000000
	Cmd_39 0xe, Var_0x9, Var_NrOfPkmn
	Cmd_39 Orr, Var_6, Var_0x9
	ChangePkmnBattleData Store, Target_1, PkmnBattleData_CurHP, 0x0
	Cmd_32 Store, Var_StatusEffectDamage, 0x7fff
	Cmd_1b 0x1
	Cmd_32 Orr, Var_6, 0x8001c
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0xa000006b
	end
@ 80

@ end_0x80
