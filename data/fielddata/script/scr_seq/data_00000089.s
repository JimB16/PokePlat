.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	FreezeMessageBox
	Pokemart1 0x4
	ReleaseAll
	End
@ 23

Script_2: @ 23
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 36

Script_3: @ 36
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 49

.byte 0x0 @ 0x49
.byte 0x0 @ 0x4a
.byte 0x0 @ 0x4b

@ end_0x4c
