.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_d2 0x7, Script_branch_b0
	JumpIfPkmnBattleData TstNe, Target_2, PkmnBattleData_35, 0xe000, Script_branch_b0
	Cmd_14
	Cmd_e
@ 2c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000058.bin", 0x2c, 0xb0 - 0x2c


Script_branch_b0: @ b0
	end
@ b4

@ end_0xb4
