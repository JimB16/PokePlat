.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_5, 0x4
	Cmd_3c_AddNewScript 0x25
	JumpIfPkmnBattleData TstEq, Target_7, PkmnBattleData_35, 0x7, Script_branch_4c
	Cmd_12 0x152, 0x2, 0x7
	Cmd_e
@ 44


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000051.bin", 0x44, 0x4c - 0x44


Script_branch_4c: @ 4c
	end
@ 50

@ end_0x50
