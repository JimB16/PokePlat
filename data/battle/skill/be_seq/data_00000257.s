.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Orr, 0x6, 0x10
	Cmd_32 Store, 0x8, 0xa
	JumpIfPkmnBattleData TstEq, 0x2, 0x3b, 0x40000, Script_branch_48
	Cmd_32 Store, 0x8, 0x14
Script_branch_48: @ 48
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x54
@ 54

