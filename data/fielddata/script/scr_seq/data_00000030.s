.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	script Script_9
	script Script_10
	script Script_11
	script Script_12
	script Script_13
	.hword 0xfd13
@ 36

Script_2: @ 36
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 49

Script_3: @ 49
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c

Script_4: @ 5c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f

Script_5: @ 6f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

Script_6: @ 82
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 95

Script_7: @ 95
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a8

Script_8: @ a8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bb

Script_9: @ bb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ce

Script_10: @ ce
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e1

Script_11: @ e1
	PlayFanfare 0x5dc
	LockAll
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f2

Script_12: @ f2
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 103

Script_1: @ 103
	End
@ 105

Script_13: @ 105
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8005, 0x2
	Jump Script_branch_119
@ 117

.byte 0x2 @ 0x117
.byte 0x0 @ 0x118

Script_branch_119: @ 119
	Message 0xb
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0xf, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_163
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_184
	Jump Script_branch_15d
@ 15b

.byte 0x2 @ 0x15b
.byte 0x0 @ 0x15c

Script_branch_15d: @ 15d
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 163

Script_branch_163: @ 163
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_15d
	CloseMsgOnKeyPress
	CallStandard 0x802
	ReleaseAll
	End
@ 184

Script_branch_184: @ 184
	Message 0xc
	Jump Script_branch_119
@ 18d

.byte 0x2 @ 0x18d
.byte 0x0 @ 0x18e
.byte 0x0 @ 0x18f

@ end_0x190
