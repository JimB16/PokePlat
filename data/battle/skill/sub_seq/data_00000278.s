.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, Target_1, 0x55, 0x1, Script_branch_5c
	JumpIfPkmnBattleData Eq, Target_1, 0x56, 0x0, Script_branch_100
	JumpIf Eq, Var_0x45, 0x1, Script_branch_a0
	Cmd_45 0x1, 0xa
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000278.bin", 0x54, 0x5c - 0x54


Script_branch_5c: @ 5c
	Cmd_45 0x1, 0xa
	Cmd_e
@ 6c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000278.bin", 0x6c, 0xa0 - 0x6c


Script_branch_a0: @ a0
	JumpIfPkmnBattleData Eq, Target_1, 0x56, 0x0, Script_branch_cc
	ChangePkmnBattleData Store, Target_1, 0x56, 0x0
Script_branch_cc: @ cc
	JumpIfPkmnBattleData Eq, Target_1, 0x55, 0x0, Script_branch_100
	ChangePkmnBattleData Store, Target_1, 0x55, 0x0
	Cmd_ca 0x1
Script_branch_100: @ 100
	end
@ 104

@ end_0x104
