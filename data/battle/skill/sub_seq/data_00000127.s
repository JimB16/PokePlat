.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x2, 0x35, 0x80000000, Script_branch_68
	JumpIf TstNe, 0xa, 0x10001, Script_branch_68
	AddNewScript 76
	ChangePkmnBattleData 0xa, 0x2, 0x35, 0x80000000
	Cmd_12 0x1ee, 0x2, 0x2
	Cmd_e
	Cmd_1e 0x1e
	end
@ 68

Script_branch_68: @ 68
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x7c
@ 7c

