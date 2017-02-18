.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_84
	JumpIfPkmnBattleData Eq, Target_2, 0x1a, 0x79, Script_branch_84
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_Item, GRISEOUS_ORB, Script_branch_84
	JumpIfPkmnBattleData Ne, Target_2, 0x56, 0x0, Script_branch_84
	JumpIfPkmnBattleData Ne, Target_2, 0x55, 0x0, Script_branch_84
	Cmd_87 Script_branch_84
	Cmd_14
	Cmd_e
@ 7c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000142.bin", 0x7c, 0x84 - 0x7c


Script_branch_84: @ 84
	end
@ 88

@ end_0x88
