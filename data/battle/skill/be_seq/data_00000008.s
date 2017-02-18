.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x2, Script_branch_40
	JumpIfPkmnBattleData TstEq, Target_2, PkmnBattleData_StatusEffect, 0x0|7, Script_branch_40
	Cmd_32 Store, Var_3, 0x2000003d
	Cmd_26
	Cmd_f
	end
@ 40

Script_branch_40: @ 40
	Cmd_11
	Cmd_e
@ 48


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000008.bin", 0x48, 0x80 - 0x48


@ end_0x80
