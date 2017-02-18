.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, Target_1, 0x5f, 0x0, Script_branch_68
	Cmd_3a 0x11, 0x1, 0x5f, 0x20
	ChangePkmnBattleData Store, Target_1, 0x5f, 0x0
	Cmd_39 Store, Var_0x14, Var_NrOfPkmn
	Cmd_32 Orr, Var_6, 0x40
	Cmd_3c_AddNewScript 0x2
Script_branch_68: @ 68
	end
@ 6c

@ end_0x6c
