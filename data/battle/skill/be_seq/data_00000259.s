.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_Weather, 0x70000, Script_branch_3c
	Cmd_32 Orr, Var_Weather, 0x50000
	Cmd_15 0x42e, 0x2, 0x1
	Jump Script_branch_5c
@ 3c

Script_branch_3c: @ 3c
	Cmd_32 Bic, Var_Weather, 0x70000
	Cmd_15 0x431, 0x2, 0x1
Script_branch_5c: @ 5c
	Cmd_32 Store, Var_3, 0x2000005a
	Cmd_a4
	end
@ 74


.incbin "./baserom/data/battle/skill/be_seq_narc/data_00000259.bin", 0x74, 0x88 - 0x74


@ 0x88
