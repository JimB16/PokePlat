.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	PlayFanfare 0x5dc
	LockAll
	ShowRecordList 0x0
	ReleaseAll
	End
@ 2c

Script_2: @ 2c
	PlayFanfare 0x5dc
	LockAll
	ShowRecordList 0x1
	ReleaseAll
	End
@ 3a

Script_3: @ 3a
	PlayFanfare 0x5dc
	LockAll
	ShowRecordList 0x2
	ReleaseAll
	End
@ 48

Script_4: @ 48
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5b

Script_5: @ 5b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e

Script_6: @ 6e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81

Script_7: @ 81
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 94

@ end_0x94
