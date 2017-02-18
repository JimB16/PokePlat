.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, Target_1, MAGIC_GUARD, Script_branch_dc
	JumpIf TstEq, Var_6, 0x1000, Script_branch_dc
	Cmd_12 0x10c, 0x2, 0x1
	Cmd_e
@ 3c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000061.bin", 0x3c, 0xdc - 0x3c


Script_branch_dc: @ dc
	end
@ e0

@ end_0xe0
