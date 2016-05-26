.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	SetVar 0x4000, 0x0
	HearthromeGymFunction
	End
@ 10

@ end_0x10
