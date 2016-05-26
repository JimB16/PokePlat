.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	End
@ c

Script_2: @ c
	End
@ e

.byte 0x0 @ 0xe
.byte 0x0 @ 0xf

@ end_0x10
