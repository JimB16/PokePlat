.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_f4
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_Type1, GRASS, Script_branch_108
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_Type2, GRASS, Script_branch_108
	Cmd_11
	Cmd_e
@ 44


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000068.bin", 0x44, 0xf4 - 0x44


Script_branch_f4: @ f4
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 108

Script_branch_108: @ 108
	Cmd_32 Orr, Var_0xa, 0x8
	end
@ 11c

@ end_0x11c
