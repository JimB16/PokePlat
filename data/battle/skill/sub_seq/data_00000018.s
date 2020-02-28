.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf Eq, 0x5, 0x7, Script_branch_250
	JumpIf Ne, 0x5, 0x4, Script_branch_e0
	Cmd_37 0x0, 0x7, 0xf, Script_branch_32c
	Cmd_37 0x0, 0x7, 0x48, Script_branch_32c
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_80
	Cmd_37 0x0, 0x7, 0x66, Script_branch_32c
Script_branch_80: @ 80
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x7, Script_branch_44c
	Cmd_37 0x0, 0x7, 0x2b, Script_branch_c0
	JumpIf TstNe, Var_Weather, 0xf00, Script_branch_494
Script_branch_c0: @ c0
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_3b8
	Jump Script_branch_250
@ e0

Script_branch_e0: @ e0
	Cmd_a1 0x0, 0x7, 0xf, Script_branch_32c
	Cmd_a1 0x0, 0x7, 0x48, Script_branch_32c
	Cmd_d3 0xa
	JumpIf TstEq, Var_Weather, 0x30, Script_branch_138
	Cmd_a1 0x0, 0x7, 0x66, Script_branch_32c
Script_branch_138: @ 138
	JumpIf Ne, 0x5, 0x2, Script_branch_160
	Cmd_a1 0x0, 0x7, 0x13, Script_branch_3b8
Script_branch_160: @ 160
	JumpIf Ne, 0x5, 0x1, Script_branch_17c
	Cmd_11
	Cmd_e
Script_branch_17c: @ 17c
	JumpIf Eq, 0x5, 0x3, Script_branch_19c
	Cmd_d2 0x7, Script_branch_3b8
Script_branch_19c: @ 19c
	JumpIfPkmnBattleData TstNe, 0x7, 0x34, 0x7, Script_branch_44c
	Cmd_37 0x0, 0x7, 0x2b, Script_branch_1dc
	JumpIf TstNe, Var_Weather, 0xf00, Script_branch_494
Script_branch_1dc: @ 1dc
	JumpIfPkmnBattleData Ne, 0x7, 0x34, 0x0, Script_branch_3b8
	JumpIf Eq, 0x5, 0x3, Script_branch_250
	JumpIf TstNe, 0xa, 0x10001, Script_branch_3b8
	JumpIf TstNe, 0xd, 0x8, Script_branch_500
	JumpIf Ne, 0x5, 0x1, Script_branch_250
	Cmd_17 0x1
	Cmd_e
Script_branch_250: @ 250
	Cmd_45 0x7, 0x1
	Cmd_e
	Cmd_38
	Cmd_3 0x2
	Cmd_3a 0xa, 0x7, 0x34, 0x9
	JumpIf Eq, 0x5, 0x3, Script_branch_2ac
	Cmd_12 0x2f, 0x2, 0x7
	Jump Script_branch_2c4
@ 2ac

Script_branch_2ac: @ 2ac
	Cmd_12 0x32, 0x24, 0xff, 0x15, 0x7
Script_branch_2c4: @ 2c4
	Cmd_e
	Cmd_1e 0x1e
	Cmd_42 0x7, 0x1
	Cmd_e
	JumpIfPkmnBattleData TstNe, 0x7, 0x3b, 0x200400c0, Script_branch_308
	Cmd_41 0x7
	Jump Script_branch_328
@ 308

Script_branch_308: @ 308
	Cmd_41 0x7
	Cmd_39 0x7, 0x14, 0x11
	AddNewScript 287
Script_branch_328: @ 328
	end
@ 32c

Script_branch_32c: @ 32c
	JumpIf Eq, 0x5, 0x2, Script_branch_548
	JumpIf Eq, 0x5, 0x3, Script_branch_548
	JumpIf Eq, 0x5, 0x4, Script_branch_378
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
Script_branch_378: @ 378
	Cmd_12 0x149, 0xb, 0x7, 0x7
	Jump Script_branch_52c
@ 394


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000018.bin", 0x394, 0x3b8 - 0x394


Script_branch_3b8: @ 3b8
	JumpIf Eq, 0x5, 0x2, Script_branch_548
	JumpIf Eq, 0x5, 0x3, Script_branch_548
	JumpIf Eq, 0x5, 0x4, Script_branch_548
	Cmd_1e 0x1e
	LoadMoveData 0x7
	JumpIf Eq, 0x9, 0x4, Script_branch_43c
	JumpIf Eq, 0x9, 0x8, Script_branch_43c
	AddNewScript 75
	Jump Script_branch_548
@ 43c

Script_branch_43c: @ 43c
	AddNewScript 176
	Jump Script_branch_548
@ 44c

Script_branch_44c: @ 44c
	JumpIf Eq, 0x5, 0x2, Script_branch_548
	JumpIf Eq, 0x5, 0x3, Script_branch_548
	Cmd_1e 0x1e
	Cmd_12 0x39, 0x2, 0x7
	Jump Script_branch_52c
@ 494

Script_branch_494: @ 494
	JumpIf Eq, 0x5, 0x2, Script_branch_548
	JumpIfPkmnBattleData TstNe, 0x7, 0x35, 0x70, Script_branch_4e0
	Cmd_1e 0x1e
	Cmd_12 0x146, 0x2, 0x7
	Jump Script_branch_52c
@ 4e0

Script_branch_4e0: @ 4e0
	Cmd_1e 0x1e
	Cmd_12 0x143, 0x2, 0x7
	Jump Script_branch_52c
@ 500

Script_branch_500: @ 500
	JumpIf Eq, 0x5, 0x2, Script_branch_548
	Cmd_1e 0x1e
	Cmd_12 0xc8, 0x2, 0x7
Script_branch_52c: @ 52c
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
Script_branch_548: @ 548
	end
@ 0x54c
@ 54c

