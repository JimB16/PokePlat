.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, Target_1, 0x1a, 0x79, Script_branch_8c
	JumpIfPkmnBattleData Eq, Target_1, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_8c
	Cmd_ae Script_branch_8c
	Cmd_32 Store, Var_3, 0xa0000088
	Cmd_26
	Cmd_f
	Cmd_11
	Cmd_e
@ 58


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000233.bin", 0x58, 0x8c - 0x58


Script_branch_8c: @ 8c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ a0

@ end_0xa0
