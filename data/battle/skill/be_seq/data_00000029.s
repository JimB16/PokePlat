.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_31 0x0, 0xfd
	Cmd_32 Cmd32_Store, 0x1f, 0x1
	Cmd_26
	Cmd_f
	end
@ 28

@ end_0x28
