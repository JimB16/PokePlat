.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData TstNe, 0x1, 0x3b, 0x4000, Script_branch_50
	ChangePkmnBattleData 0xa, 0x1, 0x3b, 0x4000
	Cmd_15 0x235, 0x2, 0x1
	Cmd_32 Store, Var_3, 0x2000005a
	end
@ 50

Script_branch_50: @ 50
	Cmd_32 Orr, 0xa, 0x40
	end
@ 0x64
@ 64

