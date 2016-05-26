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

Script_6: @ 1a
	CheckStatusPhraseBox 0x4, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_33
	ClearFlag 0x210
	End
@ 33

Script_branch_33: @ 33
	SetFlag 0x210
	End
@ 39

Script_1: @ 39
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x8d
	CompareLastResultJump 0x1, Script_branch_83
	Message 0x0
	SetVar 0x8004, 0x1c1
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_8e
	CallStandard 0x7fc
	SetFlag 0x8d
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 83

Script_branch_83: @ 83
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8e

Script_branch_8e: @ 8e
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 98

Script_2: @ 98
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFirstPokeParty 0x8000
	SetVarPokeNick 0x0, 0x8000
	Message 0x3
	StoreHappyPoke 0x800c, 0x8000
	If 0x800c, 0xff
	CompareLastResultJump 0x4, Script_branch_108
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_113
	If 0x800c, 0x96
	CompareLastResultJump 0x4, Script_branch_11e
	If 0x800c, 0x64
	CompareLastResultJump 0x4, Script_branch_129
	If 0x800c, 0x32
	CompareLastResultJump 0x4, Script_branch_134
	If 0x800c, 0x1
	CompareLastResultJump 0x4, Script_branch_13f
	Jump Script_branch_14a
@ 106

.byte 0x2 @ 0x106
.byte 0x0 @ 0x107

Script_branch_108: @ 108
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 113

Script_branch_113: @ 113
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11e

Script_branch_11e: @ 11e
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 129

Script_branch_129: @ 129
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 134

Script_branch_134: @ 134
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13f

Script_branch_13f: @ 13f
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14a

Script_branch_14a: @ 14a
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 155

Script_3: @ 155
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x36, 0x0
	Message 0xb
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 174

Script_4: @ 174
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1ab, 0x0
	Message 0xc
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 193

Script_5: @ 193
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0xd
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b2

.byte 0x0 @ 0x1b2
.byte 0x0 @ 0x1b3

@ end_0x1b4
