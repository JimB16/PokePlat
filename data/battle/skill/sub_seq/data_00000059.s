.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x0, 0xff, 0x62, Script_branch_14c
	JumpIf Eq, 0x23, 0x23, Script_branch_a0
	JumpIf Eq, 0x23, 0x53, Script_branch_b4
	JumpIf Eq, 0x23, 0x1cf, Script_branch_c8
	JumpIf Eq, 0x23, 0x80, Script_branch_dc
	JumpIf Eq, 0x23, 0xfa, Script_branch_f0
	JumpIf Eq, 0x23, 0x148, Script_branch_104
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
	Cmd_12 0x106, 0xa, 0xff, 0xff
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0x6, 0x40
	Cmd_23_LoadSubSeq 0x2
@ 14c

Script_branch_14c: @ 14c
	end
@ 0x150
@ 150

