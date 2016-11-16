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
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d

Script_2: @ 2d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 40

Script_3: @ 40
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x105
	CompareLastResultJump EQUAL, Script_branch_87
	Message 0x2
	SetVar 0x8004, 0x120
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_92
	CallStandard 0x7fc
	SetFlag 0x105
	Jump Script_branch_87
@ 85

.byte 0x2 @ 0x85
.byte 0x0 @ 0x86

Script_branch_87: @ 87
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 92

Script_branch_92: @ 92
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9c

Script_4: @ 9c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ af

Script_5: @ af
	PlayFanfare 0x5dc
	LockAll
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c0

Script_6: @ c0
	PlayFanfare 0x5dc
	LockAll
	Message 0x6
	ShowMoney 0x14, 0x2
	Jump Script_branch_d5
@ d5

Script_branch_d5: @ d5
	Multi 0x1, 0x1, 0x0, 0x1, 0x8000
	Cmd_42 0xdb, 0x0
	Cmd_42 0xdc, 0x1
	Cmd_42 0xdd, 0x2
	Cmd_42 0xde, 0x3
	CloseMulti
	CopyVar 0x8008, 0x8000
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_125
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_131
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_13d
	Message 0xa
	Jump Script_branch_28c
@ 125

Script_branch_125: @ 125
	SetVar 0x8001, 0x1e
	Jump Script_branch_191
@ 131

Script_branch_131: @ 131
	SetVar 0x8001, 0x1f
	Jump Script_branch_191
@ 13d

Script_branch_13d: @ 13d
	SetVar 0x8001, 0x20
	Jump Script_branch_191
@ 149

Script_branch_149: @ 149
	CheckMoney 0x800c, 0xc8
	Return
@ 153

Script_branch_153: @ 153
	CheckMoney 0x800c, 0x12c
	Return
@ 15d

Script_branch_15d: @ 15d
	CheckMoney 0x800c, 0x15e
	Return
@ 167

Script_branch_167: @ 167
	Cmd_334 0x23, 0xc8
	TakeMoney 0xc8
	Return
@ 175

Script_branch_175: @ 175
	Cmd_334 0x23, 0x12c
	TakeMoney 0x12c
	Return
@ 183

Script_branch_183: @ 183
	Cmd_334 0x23, 0x15e
	TakeMoney 0x15e
	Return
@ 191

Script_branch_191: @ 191
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_149
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_153
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_15d
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_277
	CheckStoreItem 0x8001, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_280
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_167
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_175
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_183
	UpdateMoney
	SetVarItem 0x0, 0x8001
	PlayFanfare 0x617
	SetVarItem 0x0, 0x8001
	Message 0x7
	CopyVar 0x8004, 0x8001
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	CheckIdPlayer 0x800c, 0x40
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_26e
	CheckStoreItem 0x8001, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_280
	PlayFanfare 0x617
	SetVarItem 0x0, 0x8001
	Message 0x8
	CopyVar 0x8004, 0x8001
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	Jump Script_branch_26e
@ 26e

Script_branch_26e: @ 26e
	Message 0x6
	Jump Script_branch_d5
@ 277

Script_branch_277: @ 277
	Message 0x9
	Jump Script_branch_28c
@ 280

Script_branch_280: @ 280
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 28c

Script_branch_28c: @ 28c
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 296

.byte 0x0 @ 0x296
.byte 0x0 @ 0x297

@ end_0x298
