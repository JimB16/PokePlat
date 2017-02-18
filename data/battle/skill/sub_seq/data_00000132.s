.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, Target_2, 0x40, 0x0, Script_branch_74
	JumpIf TstNe, Var_0xa, 0x10001, Script_branch_74
	Cmd_3c_AddNewScript 0x4c
	Cmd_38 0x2, 0x3
	Cmd_3a 0x7, 0x2, 0x40, 0x9
	Cmd_12 0x1f4, 0x2, 0x2
	Cmd_e
@ 68


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000132.bin", 0x68, 0x74 - 0x68


Script_branch_74: @ 74
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 88

@ end_0x88
