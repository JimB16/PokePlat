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

Script_1: @ 1a
	PlayFanfare 0x5dc
	LockAll
	ShowRecordList 0x3
	ReleaseAll
	End
@ 28

Script_2: @ 28
	PlayFanfare 0x5dc
	LockAll
	ShowRecordList 0x4
	ReleaseAll
	End
@ 36

Script_3: @ 36
	PlayFanfare 0x5dc
	LockAll
	ShowRecordList 0x5
	ReleaseAll
	End
@ 44

Script_4: @ 44
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

Script_5: @ 57
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a

Script_6: @ 6a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7d

.byte 0x0 @ 0x7d
.byte 0x0 @ 0x7e
.byte 0x0 @ 0x7f

@ end_0x80
