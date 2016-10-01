.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 25

Script_2: @ 25
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 38

Script_3: @ 38
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0xff, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

Script_4: @ 57
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	Jump Script_branch_6a
	End
@ 6a

Script_branch_6a: @ 6a
	Message 0x4
	Multi4 0x1, 0x1, 0x0, 0x1, 0x800c
	TxtMsgScrpMulti 0xe, 0xff, 0x0
	TxtMsgScrpMulti 0xf, 0xff, 0x1
	TxtMsgScrpMulti 0x10, 0xff, 0x2
	TxtMsgScrpMulti 0x11, 0xff, 0x3
	TxtMsgScrpMulti 0x12, 0xff, 0x4
	TxtMsgScrpMulti 0x13, 0xff, 0x5
	TxtMsgScrpMulti 0x14, 0xff, 0x6
	TxtMsgScrpMulti 0x15, 0xff, 0x7
	TxtMsgScrpMulti 0x16, 0xff, 0x8
	CloseMulti4
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_135
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_140
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_14b
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_156
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_161
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_16c
	If 0x8008, 0x6
	CompareLastResultJump EQUAL, Script_branch_177
	If 0x8008, 0x7
	CompareLastResultJump EQUAL, Script_branch_182
	Jump Script_branch_18d
	End
@ 135

Script_branch_135: @ 135
	Message 0x6
	Jump Script_branch_6a
	End
@ 140

Script_branch_140: @ 140
	Message 0x7
	Jump Script_branch_6a
	End
@ 14b

Script_branch_14b: @ 14b
	Message 0x8
	Jump Script_branch_6a
	End
@ 156

Script_branch_156: @ 156
	Message 0x9
	Jump Script_branch_6a
	End
@ 161

Script_branch_161: @ 161
	Message 0xa
	Jump Script_branch_6a
	End
@ 16c

Script_branch_16c: @ 16c
	Message 0xb
	Jump Script_branch_6a
	End
@ 177

Script_branch_177: @ 177
	Message 0xc
	Jump Script_branch_6a
	End
@ 182

Script_branch_182: @ 182
	Message 0xd
	Jump Script_branch_6a
	End
@ 18d

Script_branch_18d: @ 18d
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 198

@ end_0x198
