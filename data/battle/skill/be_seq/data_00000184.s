.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Ne, Target_1, PkmnBattleData_Item, NO_ITEM, Script_branch_5c
	Cmd_cb 0xf
	Cmd_3a 0x7, 0x1, 0x37, 0x24
	Cmd_15 0x24d, 0xf, 0x1, 0xff
	Cmd_32 Store, Var_3, 0x2000005a
	end
@ 5c

Script_branch_5c: @ 5c
	Cmd_32 Orr, Var_0xa, 0x40
	end
@ 70

@ end_0x70
