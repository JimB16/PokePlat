.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, Var_0, 0x200, Script_branch_40
	Cmd_12 0x359, 0x1c, 0x1, 0xff
	Cmd_e
	Cmd_7 0x3, 0x1
	Jump Script_branch_60
@ 40

Script_branch_40: @ 40
	Cmd_13 0x4c9, 0x2, 0x4
	Cmd_e
	Cmd_7 0x3, 0x4
Script_branch_60: @ 60
	Cmd_2f_TryToCatchPkmn 0x1
	Cmd_30_WaitFor
	JumpIf TstNe, 0x21, 0x4, Script_branch_d0
	JumpIf Ne, 0x37, 0x0, Script_branch_d0
	Cmd_1f 0x1, 0x5f1
	Cmd_12 0x352, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_22
	Cmd_e
	Cmd_32 Orr, 0x21, 0x5
Script_branch_d0: @ d0
	end
@ 0xd4
@ d4

