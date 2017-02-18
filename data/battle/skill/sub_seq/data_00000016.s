.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, Var_DamageMultiplier, 0x1, Script_branch_c8
	Cmd_12 0x306, 0x0
	Cmd_e
@ 24


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000016.bin", 0x24, 0xc8 - 0x24


Script_branch_c8: @ c8
	end
@ cc

@ end_0xcc
