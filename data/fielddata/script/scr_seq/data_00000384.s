.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	Cmd_2f2
	End
@ e

Script_2: @ e
	End
@ 10

@ end_0x10
