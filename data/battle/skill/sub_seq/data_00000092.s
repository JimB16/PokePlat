.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_3b, 0x200400c0, Script_branch_60
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0x200000, Script_branch_60
	Cmd_3c_AddNewScript 0x4c
	Cmd_67
	Cmd_12 0x159, 0xe, 0x1, 0x2
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000092.bin", 0x54, 0x60 - 0x54


Script_branch_60: @ 60
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 74

@ end_0x74
