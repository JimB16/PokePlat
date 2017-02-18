.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a1 0x0, Target_2, OBLIVIOUS, Script_branch_c4
	JumpIfPkmnBattleData Eq, Target_1, 0x1d, 0x2, Script_branch_84
	JumpIfPkmnBattleData Eq, Target_2, 0x1d, 0x2, Script_branch_84
	Cmd_3a 0x11, 0x2, 0x1d, 0x9
	Cmd_4f 0x0, Var_1, 0x1d, 0x9, Script_branch_84
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x80000031
	end
@ 84

Script_branch_84: @ 84
	Cmd_11
	Cmd_e
@ 8c


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000265.bin", 0x8c, 0xc4 - 0x8c


Script_branch_c4: @ c4
	Cmd_11
	Cmd_e
@ cc


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000265.bin", 0xcc, 0x10c - 0xcc


@ end_0x10c
