.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3c_AddNewScript 0x117
	Cmd_8e Script_branch_3bc
	Cmd_32 Store, Var_0x8, 0x14
	Cmd_26
	Cmd_f
	Cmd_8f
	Cmd_32 Bic, Var_6, 0x1
	Cmd_32 Bic, Var_6, 0x4000
	Cmd_11
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000153.bin", 0x54, 0x3bc - 0x54


Script_branch_3bc: @ 3bc
	end
@ 3c0

@ end_0x3c0
