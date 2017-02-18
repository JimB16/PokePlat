.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_9b 0x2, 0x1, 0x0, Script_branch_a8
	Cmd_9b 0x2, 0x1, 0x1, Script_branch_a8
	Cmd_9b 0x2, 0x1, 0x2, Script_branch_a8
	Cmd_9b 0x2, 0x1, 0x3, Script_branch_a8
	Cmd_9b 0x2, 0x1, 0x4, Script_branch_a8
	Cmd_9b 0x2, 0x1, 0x5, Script_branch_a8
	JumpIf TstNe, Var_0xc, 0x80, Script_branch_a8
	JumpIf TstNe, Var_Weather, 0x8000, Script_branch_a8
	Jump Script_branch_b0
@ a8

Script_branch_a8: @ a8
	Cmd_3c_AddNewScript 0x4c
Script_branch_b0: @ b0
	Cmd_32 Store, Var_MoveEffectNr, 0x1c
	Cmd_3c_AddNewScript 0xc
	Cmd_9b 0x2, 0x0, 0x0, Script_branch_108
	Cmd_9b 0x2, 0x2, 0x0, Script_branch_108
	Cmd_32 Store, Var_0x23, 0x73
	Cmd_3c_AddNewScript 0xac
Script_branch_108: @ 108
	Cmd_9b 0x2, 0x0, 0x1, Script_branch_148
	Cmd_9b 0x2, 0x2, 0x1, Script_branch_148
	Cmd_32 Store, Var_0x23, 0x71
	Cmd_3c_AddNewScript 0xac
Script_branch_148: @ 148
	Cmd_9b 0x2, 0x0, 0x2, Script_branch_188
	Cmd_9b 0x2, 0x2, 0x2, Script_branch_188
	Cmd_32 Store, Var_0x23, 0x36
	Cmd_3c_AddNewScript 0xac
Script_branch_188: @ 188
	Cmd_9b 0x2, 0x0, 0x3, Script_branch_1c8
	Cmd_9b 0x2, 0x2, 0x3, Script_branch_1c8
	Cmd_32 Store, Var_0x23, 0xdb
	Cmd_3c_AddNewScript 0xac
Script_branch_1c8: @ 1c8
	Cmd_9b 0x2, 0x0, 0x4, Script_branch_218
	Cmd_9b 0x2, 0x2, 0x4, Script_branch_218
	Cmd_32 Bic, Var_0xc, 0x4
	Cmd_32 Store, Var_0x23, 0xbf
	Cmd_3c_AddNewScript 0xac
Script_branch_218: @ 218
	Cmd_9b 0x2, 0x0, 0x5, Script_branch_258
	Cmd_9b 0x2, 0x2, 0x5, Script_branch_258
	Cmd_32 Store, Var_0x23, 0x186
	Cmd_3c_AddNewScript 0xac
Script_branch_258: @ 258
	JumpIf TstEq, Var_0xc, 0x80, Script_branch_294
	Cmd_32 Bic, Var_0xc, 0x80
	Cmd_32 Store, Var_0x23, 0x1be
	Cmd_3c_AddNewScript 0xac
Script_branch_294: @ 294
	JumpIf TstEq, Var_Weather, 0x8000, Script_branch_2d8
	Cmd_32 Bic, Var_Weather, 0x8000
	Cmd_12 0x415, 0xa, 0x1, 0x1
	Cmd_e
@ 2d0


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000171.bin", 0x2d0, 0x2d8 - 0x2d0


Script_branch_2d8: @ 2d8
	end
@ 2dc

@ end_0x2dc
