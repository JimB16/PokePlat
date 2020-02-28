.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a9 Script_branch_44
	ChangePkmnBattleData 0xa, 0x1, 0x3b, 0x10000000
	Cmd_15 0xb2, 0xd, 0x1, 0xff
	Cmd_32 Store, Var_3, 0x2000005a
	end
@ 44

Script_branch_44: @ 44
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x58
@ 58

