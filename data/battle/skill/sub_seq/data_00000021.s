.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1e
	Cmd_f
	JumpIf TstEq, Var_0xa, 0x2000, Script_branch_30
	Cmd_12 0x31b, 0x0
	Jump Script_branch_180
@ 30

Script_branch_30: @ 30
	JumpIf TstEq, Var_0xa, 0x100, Script_branch_98
	Cmd_45 0x2, 0xa
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000021.bin", 0x54, 0x98 - 0x54


Script_branch_98: @ 98
	JumpIf TstEq, Var_0xa, 0x80, Script_branch_e8
	JumpIfPkmnBattleData Ne, Target_2, PkmnBattleData_CurHP, 0x1, Script_branch_e8
	Cmd_12 0x1bd, 0x2, 0x2
	Cmd_e
@ d8


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000021.bin", 0xd8, 0xe8 - 0xd8


Script_branch_e8: @ e8
	JumpIf TstEq, Var_0xa, 0x20, Script_branch_110
	Cmd_12 0x307, 0x0
	Jump Script_branch_180
@ 110

Script_branch_110: @ 110
	JumpIf TstNe, Var_6, 0x800, Script_branch_18c
	JumpIf AndEq, Var_0xa, 0x6, Script_branch_18c
	JumpIf TstEq, Var_0xa, 0x2, Script_branch_160
	Cmd_12 0x30c, 0x0
	Jump Script_branch_180
@ 160

Script_branch_160: @ 160
	JumpIf TstEq, Var_0xa, 0x4, Script_branch_18c
	Cmd_12 0x30b, 0x0
Script_branch_180: @ 180
	Cmd_e
@ 184


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000021.bin", 0x184, 0x18c - 0x184


Script_branch_18c: @ 18c
	end
@ 190

@ end_0x190
