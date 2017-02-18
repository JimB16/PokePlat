.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3a 0x11, 0x2, 0x30, 0x9
	Cmd_32 0xd, Var_0x9, 0x2
	Cmd_4f 0x2, Var_MoveEffect_SubSeq, 0x2f, 0x9, Script_branch_54
	Cmd_32 Store, Var_0x8, 0x14
	Jump Script_branch_64
@ 54

Script_branch_54: @ 54
	Cmd_32 Store, Var_0x8, 0xa
Script_branch_64: @ 64
	Cmd_26
	Cmd_f
	end
@ 70

@ end_0x70
