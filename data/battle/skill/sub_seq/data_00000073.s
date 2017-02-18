.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_5c Script_branch_2c
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x174, 0x2, 0x2
	Cmd_e
@ 24


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000073.bin", 0x24, 0x2c - 0x24


Script_branch_2c: @ 2c
	end
@ 30

@ end_0x30
