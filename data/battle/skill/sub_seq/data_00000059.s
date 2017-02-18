.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, 0xff, MAGIC_GUARD, Script_branch_14c
	JumpIf Eq, Var_0x23, 0x23, Script_branch_a0
	JumpIf Eq, Var_0x23, 0x53, Script_branch_b4
	JumpIf Eq, Var_0x23, 0x1cf, Script_branch_c8
	JumpIf Eq, Var_0x23, 0x80, Script_branch_dc
	JumpIf Eq, Var_0x23, 0xfa, Script_branch_f0
	JumpIf Eq, Var_0x23, 0x148, Script_branch_104
	Cmd_45 0xff, 0x21
	Jump Script_branch_110
@ a0

Script_branch_a0: @ a0
	Cmd_45 0xff, 0x22
	Jump Script_branch_110
@ b4

Script_branch_b4: @ b4
	Cmd_45 0xff, 0x23
	Jump Script_branch_110
@ c8

Script_branch_c8: @ c8
	Cmd_45 0xff, 0x24
	Jump Script_branch_110
@ dc

Script_branch_dc: @ dc
	Cmd_45 0xff, 0x25
	Jump Script_branch_110
@ f0

Script_branch_f0: @ f0
	Cmd_45 0xff, 0x26
	Jump Script_branch_110
@ 104

Script_branch_104: @ 104
	Cmd_45 0xff, 0x27
Script_branch_110: @ 110
	Cmd_e
@ 114


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000059.bin", 0x114, 0x14c - 0x114


Script_branch_14c: @ 14c
	end
@ 150

@ end_0x150
