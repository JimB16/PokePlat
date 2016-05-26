.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	HearthromeGymFunction
	End
@ 16

Script_2: @ 16
	HearthromeGymFunction2
	End
@ 1a

Script_3: @ 1a
	LockAll
	PlayFanfare 0x624
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b

Script_4: @ 2b
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	PlayFanfare 0x637
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 40

@ end_0x40
