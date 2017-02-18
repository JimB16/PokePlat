.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, Target_2, PkmnBattleData_CurHP, 0x0, Script_branch_54
	ChangePkmnBattleData Bic, Target_2, PkmnBattleData_StatusEffect, 0x0|7
	Cmd_12 0x12e, 0x2, 0x2
	Cmd_e
@ 40


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000155.bin", 0x40, 0x54 - 0x40


Script_branch_54: @ 54
	end
@ 58

@ end_0x58
