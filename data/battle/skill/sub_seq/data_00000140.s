.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_85 Script_branch_40
	Cmd_32 Store, Var_0x3a, 0x1
	Cmd_3c_AddNewScript 0x4c
	Cmd_12 0x25e, 0x0
	Cmd_e
@ 30


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000140.bin", 0x30, 0x40 - 0x30


Script_branch_40: @ 40
	JumpIf TstNe, Var_0xa, 0x1fd849, Script_branch_5c
	Cmd_3c_AddNewScript 0x4c
Script_branch_5c: @ 5c
	end
@ 60

@ end_0x60
