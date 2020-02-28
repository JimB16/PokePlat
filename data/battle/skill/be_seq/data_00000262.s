.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_37 0x1, 0x1, 0x78, Script_branch_24
	Cmd_32 Store, 0x8, 0xc
Script_branch_24: @ 24
	Cmd_32 Store, Var_3, 0x84000089
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x40
@ 40

