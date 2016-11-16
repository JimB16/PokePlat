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

Script_5: @ 1a
	End
@ 1c

Script_1: @ 1c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_43
	Message 0x1
	Jump Script_branch_4e
@ 41

.byte 0x2 @ 0x41
.byte 0x0 @ 0x42

Script_branch_43: @ 43
	Message 0x2
	Jump Script_branch_4e
@ 4c

.byte 0x2 @ 0x4c
.byte 0x0 @ 0x4d

Script_branch_4e: @ 4e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56

Script_2: @ 56
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x964
	CompareLastResultJump EQUAL, Script_branch_7f
	CheckFlag 0x9b8
	CompareLastResultJump EQUAL, Script_branch_8e
	Message 0x3
	Jump Script_branch_99
@ 7d

.byte 0x2 @ 0x7d
.byte 0x0 @ 0x7e

Script_branch_7f: @ 7f
	SetFlag 0x145
	Message 0x5
	Jump Script_branch_99
@ 8c

.byte 0x2 @ 0x8c
.byte 0x0 @ 0x8d

Script_branch_8e: @ 8e
	Message 0x4
	Jump Script_branch_99
@ 97

.byte 0x2 @ 0x97
.byte 0x0 @ 0x98

Script_branch_99: @ 99
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a1

Script_3: @ a1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b4

Script_4: @ b4
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c5

Script_6: @ c5
	SetVarHero 0x0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ db

.byte 0x0 @ 0xdb

@ end_0xdc
