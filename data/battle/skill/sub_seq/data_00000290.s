.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0x2f, 0x2, Script_branch_1c
	Cmd_ca 0xff
Script_branch_1c: @ 1c
	Cmd_32 Bic, 0x2f, 0x2
	end
@ 0x30
@ 30

