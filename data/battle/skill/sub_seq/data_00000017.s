.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_6, 0x10000, Script_branch_30
	Cmd_12 0x2e, 0x6, 0xff
	Cmd_e
@ 28


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000017.bin", 0x28, 0x30 - 0x28


Script_branch_30: @ 30
	end
@ 34

@ end_0x34
