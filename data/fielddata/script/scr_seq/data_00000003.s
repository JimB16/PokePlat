.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart 0x1
	ReleaseAll
	End
@ 2c

Script_2: @ 2c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0x0
	ReleaseAll
	End
@ 42

Script_3: @ 42
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 55

Script_4: @ 55
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 68

Script_5: @ 68
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7b

.byte 0x0 @ 0x7b

@ end_0x7c
