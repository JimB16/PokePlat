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
	CheckFlag 0xdc
	CompareLastResultJump EQUAL, Script_branch_216
	CheckFlag 0xab1
	CompareLastResultJump EQUAL, Script_branch_2b0
	CheckFlag 0xd8
	CompareLastResultJump LESSER, Script_branch_4a
	If 0x40e5, 0x0
	CompareLastResultJump EQUAL, Script_branch_57
	Jump Script_branch_81
@ 4a

Script_branch_4a: @ 4a
	SetFlag 0xd8
	Message 0x0
	Jump Script_branch_60
@ 57

Script_branch_57: @ 57
	Message 0x1
	Jump Script_branch_60
@ 60

Script_branch_60: @ 60
	ChsRSPoke 0x800c
	CopyVar 0x40e5, 0x800c
	SetSPoke 0x1
	SetVarPokeStored 0x0, 0x40e5, 0x0, 0x0
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 81

Script_branch_81: @ 81
	Message 0x3
	CheckSPoke 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_29f
	CheckPokeParty 0x800c, 0x40e5
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_283
	Jump Script_branch_ae
@ ae

Script_branch_ae: @ ae
	SetVarPokeStored 0x0, 0x40e5, 0x0, 0x0
	Message 0x4
	CheckIdPlayer 0x800c, 0xc
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_189
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_191
	If 0x800c, 0x2
	CompareLastResultCall EQUAL, Script_branch_199
	If 0x800c, 0x3
	CompareLastResultCall EQUAL, Script_branch_1a1
	If 0x800c, 0x4
	CompareLastResultCall EQUAL, Script_branch_1a9
	If 0x800c, 0x5
	CompareLastResultCall EQUAL, Script_branch_1b1
	If 0x800c, 0x6
	CompareLastResultCall EQUAL, Script_branch_1b9
	If 0x800c, 0x7
	CompareLastResultCall EQUAL, Script_branch_1c1
	If 0x800c, 0x8
	CompareLastResultCall EQUAL, Script_branch_1c9
	If 0x800c, 0x9
	CompareLastResultCall EQUAL, Script_branch_1d1
	If 0x800c, 0xa
	CompareLastResultCall EQUAL, Script_branch_1d9
	If 0x800c, 0xb
	CompareLastResultCall EQUAL, Script_branch_1e1
	SetVar 0x8005, 0x3
	CheckStoreItem 0x5d, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_1e9
	SetFlag 0xab1
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_23f
	End
@ 189

Script_branch_189: @ 189
	SetVar 0x8004, 0x2
	Return
@ 191

Script_branch_191: @ 191
	SetVar 0x8004, 0x3
	Return
@ 199

Script_branch_199: @ 199
	SetVar 0x8004, 0x4
	Return
@ 1a1

Script_branch_1a1: @ 1a1
	SetVar 0x8004, 0x6
	Return
@ 1a9

Script_branch_1a9: @ 1a9
	SetVar 0x8004, 0x7
	Return
@ 1b1

Script_branch_1b1: @ 1b1
	SetVar 0x8004, 0x8
	Return
@ 1b9

Script_branch_1b9: @ 1b9
	SetVar 0x8004, 0x9
	Return
@ 1c1

Script_branch_1c1: @ 1c1
	SetVar 0x8004, 0xa
	Return
@ 1c9

Script_branch_1c9: @ 1c9
	SetVar 0x8004, 0xb
	Return
@ 1d1

Script_branch_1d1: @ 1d1
	SetVar 0x8004, 0xd
	Return
@ 1d9

Script_branch_1d9: @ 1d9
	SetVar 0x8004, 0xe
	Return
@ 1e1

Script_branch_1e1: @ 1e1
	SetVar 0x8004, 0xf
	Return
@ 1e9

Script_branch_1e9: @ 1e9
	CallStandard 0x7fc
	SetVar 0x8004, 0x5d
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	ClearFlag 0xdc
	SetVar 0x40e5, 0x0
	SetFlag 0xab1
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 216

Script_branch_216: @ 216
	CheckStoreItem 0x5d, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_251
	CopyVar 0x8004, 0x4117
	SetVar 0x8005, 0x3
	Jump Script_branch_25c
@ 23d

.byte 0x2 @ 0x23d
.byte 0x0 @ 0x23e

Script_branch_23f: @ 23f
	CopyVar 0x4117, 0x8004
	SetFlag 0xdc
	Jump Script_branch_251
@ 24f

.byte 0x2 @ 0x24f
.byte 0x0 @ 0x250

Script_branch_251: @ 251
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 25c

Script_branch_25c: @ 25c
	Message 0x7
	ClearFlag 0xdc
	SetVar 0x40e5, 0x0
	CallStandard 0x7fc
	SetVar 0x8004, 0x5d
	SetVar 0x8005, 0x1
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 283

Script_branch_283: @ 283
	SetVarPokeStored 0x0, 0x40e5, 0x0, 0x0
	CheckSPoke 0x800c
	SetVariableNumber 0x1, 0x800c
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 29f

Script_branch_29f: @ 29f
	Message 0x9
	SetVar 0x40e5, 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b0

Script_branch_2b0: @ 2b0
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2bb

Script_2: @ 2bb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2ce

Script_3: @ 2ce
	PlayFanfare 0x5dc
	LockAll
	Message 0xc
	Message 0xd
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	ChoiceMulti 0x107, 0x0
	ChoiceMulti 0x108, 0x1
	ChoiceMulti 0x109, 0x2
	ChoiceMulti 0x10b, 0x3
	ChoiceMulti 0x10a, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_344
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_34f
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_35a
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_365
	Jump Script_branch_370
@ 342

.byte 0x2 @ 0x342
.byte 0x0 @ 0x343

Script_branch_344: @ 344
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34f

Script_branch_34f: @ 34f
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 35a

Script_branch_35a: @ 35a
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 365

Script_branch_365: @ 365
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 370

Script_branch_370: @ 370
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 376

.byte 0x0 @ 0x376
.byte 0x0 @ 0x377

@ end_0x378
