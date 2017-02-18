.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_88
	Cmd_d2 0x2, Script_branch_88
	ChangePkmnBattleData Bic, Target_2, PkmnBattleData_3b, 0x18
	ChangePkmnBattleData Orr, Target_2, PkmnBattleData_3b, 0x10
	Cmd_3a 0x7, 0x2, 0x4a, 0xf
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x17a, 0x9, 0x1, 0x2
	Cmd_e
@ 7c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000079.bin", 0x7c, 0x88 - 0x7c


Script_branch_88: @ 88
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 9c

@ end_0x9c
