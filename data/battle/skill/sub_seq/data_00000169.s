.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x406, 0xa, 0xff, 0xff
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0x6, 0x40
	Cmd_a6 0x1, 0xff, 0x7c, Script_branch_80
	Cmd_a8 0xff, 0x9
	Cmd_32 Add, 0x9, 0x64
	Cmd_39 0xc, 0x20, 0x9
	Cmd_32 0xd, Var_StatusEffectDamage, 0x64
Script_branch_80: @ 80
	Cmd_45 0xff, 0xe
	Cmd_e
	AddNewScript 2
	end
@ 0x9c
@ 9c

