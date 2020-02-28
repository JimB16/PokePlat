.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0xa, 0x1fd849, Script_branch_3c
	Cmd_11
	Cmd_e
	JumpIfPkmnBattleData Ne, 0x2, 0x50, 0x0, Script_branch_40
	AddNewScript 111
Script_branch_3c: @ 3c
	end
@ 40

Script_branch_40: @ 40
	Cmd_32 Store, 0x23, 0x179
	Cmd_12 0x41e, 0xa, 0x2, 0xff
	Cmd_e
	Cmd_1e 0x1e
	end
@ 0x74
@ 74

