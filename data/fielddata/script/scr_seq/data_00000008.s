.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_5: @ 16
	CheckStatusPhraseBox 0x6, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_3c
	If 0x4077, 0x2
	CompareLastResultJump LESSER, Script_branch_3c
	ClearFlag 0x212
	End
@ 3c

Script_branch_3c: @ 3c
	SetFlag 0x212
	End
@ 42

Script_1: @ 42
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	DisableBadge 0x8000
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_181
	StorePoketchApp 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c5
	StorePoketchApp 0xc, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_dc
	StorePoketchApp 0xd, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f3
	StorePoketchApp 0xf, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_10a
	CheckItem 0x1af, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b8
	Jump Script_branch_1ad
@ c5

Script_branch_c5: @ c5
	DisableBadge 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x4, Script_branch_121
	Jump Script_branch_181
@ dc

Script_branch_dc: @ dc
	DisableBadge 0x800c
	If 0x800c, 0x3
	CompareLastResultJump 0x4, Script_branch_139
	Jump Script_branch_18c
@ f3

Script_branch_f3: @ f3
	DisableBadge 0x800c
	If 0x800c, 0x5
	CompareLastResultJump 0x4, Script_branch_151
	Jump Script_branch_197
@ 10a

Script_branch_10a: @ 10a
	DisableBadge 0x800c
	If 0x800c, 0x7
	CompareLastResultJump 0x4, Script_branch_169
	Jump Script_branch_1a2
@ 121

Script_branch_121: @ 121
	Message 0x2
	SetVar 0x8004, 0x2
	CallStandard 0x7d9
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 139

Script_branch_139: @ 139
	Message 0x5
	SetVar 0x8004, 0xc
	CallStandard 0x7d9
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 151

Script_branch_151: @ 151
	Message 0x8
	SetVar 0x8004, 0xd
	CallStandard 0x7d9
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 169

Script_branch_169: @ 169
	Message 0xb
	SetVar 0x8004, 0xf
	CallStandard 0x7d9
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 181

Script_branch_181: @ 181
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18c

Script_branch_18c: @ 18c
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 197

Script_branch_197: @ 197
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a2

Script_branch_1a2: @ 1a2
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ad

Script_branch_1ad: @ 1ad
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b8

Script_branch_1b8: @ 1b8
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c3

Script_2: @ 1c3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d6

Script_3: @ 1d6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e9

Script_4: @ 1e9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1fc

@ end_0x1fc
