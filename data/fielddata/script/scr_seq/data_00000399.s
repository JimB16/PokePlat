.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	Cmd_151
	End
@ a

.byte 0x2 @ 0xa
.byte 0x0 @ 0xb

@ end_0xc
