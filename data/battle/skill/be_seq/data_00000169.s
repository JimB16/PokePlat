.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstEq, 0x1, 0x34, 0xd8, Script_branch_28
	Cmd_32 Store, 0x8, 0x14
Script_branch_28: @ 28
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x34
@ 34

