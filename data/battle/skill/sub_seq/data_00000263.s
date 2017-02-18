.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_0x1a, 0x0
Script_branch_10: @ 10
	JumpIf TstEq, Var_0x2b, 0x1, Script_branch_78
	Cmd_12 0x461, 0x24, 0xe, 0xe, 0xff
	Cmd_e
@ 40


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000263.bin", 0x40, 0x78 - 0x40


Script_branch_78: @ 78
	Cmd_32 Add, Var_0x1a, 0x1
	Cmd_32 0xf, Var_0x2b, 0x1
	JumpIf Ne, Var_0x2b, 0x0, Script_branch_10
	end
@ b0

@ end_0xb0
