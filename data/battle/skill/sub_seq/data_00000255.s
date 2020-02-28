.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1e 0xf
	Cmd_38
	Cmd_3 0x0
	JumpIf Eq, 0x9, 0x1, Script_branch_68
	JumpIf Eq, 0x9, 0x2, Script_branch_80
	JumpIf Eq, 0x9, 0x3, Script_branch_98
	Cmd_12 0x33c, 0x2, 0x1
	Jump Script_branch_b0
@ 68

Script_branch_68: @ 68
	Cmd_12 0x33d, 0x2, 0x1
	Jump Script_branch_b0
@ 80

Script_branch_80: @ 80
	Cmd_12 0x33e, 0x2, 0x1
	Jump Script_branch_b0
@ 98

Script_branch_98: @ 98
	Cmd_12 0x33f, 0x2, 0x1
	Jump Script_branch_b0
@ b0

Script_branch_b0: @ b0
	Cmd_e
	Cmd_1e 0x1e
	end
@ 0xc0
@ c0

