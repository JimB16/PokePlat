.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0x4c
	Cmd_40 0x1
	ChangePkmnBattleData Orr, Target_1, PkmnBattleData_35, 0x200
	Cmd_32 Store, Var_0x15, 0x0
	end
@ 38

@ end_0x38
