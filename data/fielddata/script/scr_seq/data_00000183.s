.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_4: @ 1a
	SetFlag 0x9c0
	End
@ 20

Script_1: @ 20
	SetVar 0x8007, 0x0
	CallStandard 0x7d2
	End
@ 2c

Script_2: @ 2c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart 0x1
	ReleaseAll
	End
@ 42

Script_3: @ 42
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0x12
	ReleaseAll
	End
@ 58

Script_5: @ 58
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6b

Script_6: @ 6b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7e

.byte 0x0 @ 0x7e
.byte 0x0 @ 0x7f

@ end_0x80
