.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x3a, 0x1
	ChangePkmnBattleData Bic, Target_1, PkmnBattleData_35, 0x1000
	Cmd_32 Orr, Var_6, 0x200
	end
@ 38

@ end_0x38
