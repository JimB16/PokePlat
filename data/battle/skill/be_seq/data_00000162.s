.include "macros/script_seq.s"


Script_1: @ 0
	JumpIfPkmnBattleData Eq, 0x1, 0x45, 0x0, Script_branch_13c
	Cmd_3a 0x11, 0x1, 0x45, 0x20
	Cmd_32 Sub, Var_StatusEffectDamage, 0x3
	Cmd_32 0xc, Var_StatusEffectDamage, 0xffffffff
	Cmd_32 Store, 0x9, 0x1
	Cmd_39 0xe, 0x9, 0x20
	Cmd_3a 0x11, 0x1, 0x30, 0x20
	Cmd_56 Var_StatusEffectDamage, 0x9
	ChangePkmnBattleData 0x7, 0x1, 0x45, 0x0
	Cmd_3a 0x11, 0x1, 0x46, 0x9
	Cmd_3a 0x12, 0x1, 0x14, 0x9
	Cmd_3a 0x11, 0x1, 0x47, 0x9
	Cmd_3a 0x12, 0x1, 0x17, 0x9
	ChangePkmnBattleData 0x7, 0x1, 0x46, 0x0
	ChangePkmnBattleData 0x7, 0x1, 0x47, 0x0
	Cmd_39 0x7, 0x14, 0xf
	Cmd_32 Store, Var_MoveEffect_SubSeq, 0x20000068
	end
@ 13c

Script_branch_13c: @ 13c
	Cmd_11
	Cmd_e
	Cmd_1e 0x1e
	Cmd_12 0x32f, 0x0
	Cmd_e
	Cmd_1e 0x1e
	Cmd_32 Orr, 0xa, 0x80000000
	end
@ 0x178
@ 178

