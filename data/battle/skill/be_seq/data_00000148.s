.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_79 Script_branch_2c
	Cmd_32 Store, Var_3, 0x2000005a
	Cmd_32 Orr, Var_6, 0x8841c
	end
@ 2c

Script_branch_2c: @ 2c
	Cmd_11
	Cmd_e
@ 34


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000148.bin", 0x34, 0x48 - 0x34


@ end_0x48
