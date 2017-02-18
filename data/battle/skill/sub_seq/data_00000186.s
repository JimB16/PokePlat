.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1e
	Cmd_f
	Cmd_32 Store, Var_0x27, 0x0
	Cmd_39 Store, Var_0x1d, Var_NrOfPkmn
	Cmd_39 Store, Var_NrOfPkmn, Var_0x14
Script_branch_38: @ 38
	Cmd_6b Var_0x11
	Cmd_a2 0x1, 0x7, Script_branch_9c
	Cmd_d2 0x7, Script_branch_9c
	JumpIfPkmnBattleData Eq, Target_7, PkmnBattleData_CurHP, 0x0, Script_branch_9c
	Cmd_32 Store, Var_MoveEffectNr, 0x16
	Cmd_32 Store, Var_5, 0x3
	Cmd_3c_AddNewScript 0xc
Script_branch_9c: @ 9c
	Cmd_32 Add, Var_0x27, 0x1
	Cmd_6c Var_0x27, Script_branch_38
	Cmd_39 Store, Var_NrOfPkmn, Var_0x1d
	end
@ cc

@ end_0xcc
