.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0x6, 0x40, Script_branch_44
	Cmd_d7 0xff
	Cmd_19 0xff
	Cmd_e
	JumpIf Eq, 0x45, 0x0, Script_branch_44
	AddNewScript 264
Script_branch_44: @ 44
	Cmd_32 Bic, 0x6, 0x40
	WhoGetsHPBarCleared 0xff
	Cmd_e
	Cmd_1a 0xff
	Cmd_1c 0xff
	JumpIf Gt, Var_StatusEffectDamage, 0x0, Script_branch_94
	Cmd_39 0x7, 0x42, 0x20
Script_branch_94: @ 94
	end
@ 0x98
@ 98

