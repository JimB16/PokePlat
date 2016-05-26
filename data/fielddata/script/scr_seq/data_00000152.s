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
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21

Script_2: @ 21
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34

Script_3: @ 34
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1ab, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53

.byte 0x0 @ 0x53

@ end_0x54
