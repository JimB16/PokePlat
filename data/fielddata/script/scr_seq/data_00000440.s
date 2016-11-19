.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	SetFlag 0x9e7
	End
@ 1c

Script_2: @ 1c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xaa0
	CompareLastResultJump EQUAL, Script_branch_67
	Message 0x0
	CheckIdPlayer 0x8004, 0x1a
	ScriptCmd_AddValue 0x8004, 0x95
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_72
	SetFlag 0xaa0
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 67

Script_branch_67: @ 67
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 72

Script_branch_72: @ 72
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c

Script_3: @ 7c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_ed
	StorePoketchApp 0x7, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_fd
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c7
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_e2
	End
@ c7

Script_branch_c7: @ c7
	Message 0x3
	SetVar 0x4000, 0x1
	SetVar 0x8004, 0x7
	CallStandard 0x7d9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e2

Script_branch_e2: @ e2
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ed

Script_branch_ed: @ ed
	SetVarObj 0x0, 0x7
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fd

Script_branch_fd: @ fd
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 108

Script_4: @ 108
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	ShowMoney 0x14, 0x2
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xdf, 0x0
	Cmd_42 0xe0, 0x1
	Cmd_42 0xe1, 0x2
	Cmd_42 0xe2, 0x3
	Cmd_42 0xe3, 0x4
	CloseMulti
	CopyVar 0x8000, 0x800c
	CopyVar 0x8008, 0x8000
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_245
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_251
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_25d
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_269
	Message 0x9
	Jump Script_branch_229
@ 180

Script_branch_180: @ 180
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_275
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_27f
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_289
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_293
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_23c
	CheckStoreItem 0x8001, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_233
	If 0x8000, 0x0
	CompareLastResultCall EQUAL, Script_branch_29d
	If 0x8000, 0x1
	CompareLastResultCall EQUAL, Script_branch_2ab
	If 0x8000, 0x2
	CompareLastResultCall EQUAL, Script_branch_2b9
	If 0x8000, 0x3
	CompareLastResultCall EQUAL, Script_branch_2c7
	UpdateMoney
	PlayFanfare 0x644
	TakeItem 0x8001, 1, 0x800c
	SetVarItem 0x0, 0x8001
	Message 0xa
	Message 0x8
	Jump Script_branch_229
@ 229

Script_branch_229: @ 229
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 233

Script_branch_233: @ 233
	Message 0xb
	Jump Script_branch_229
@ 23c

Script_branch_23c: @ 23c
	Message 0xc
	Jump Script_branch_229
@ 245

Script_branch_245: @ 245
	SetVar 0x8001, 0x5f
	Jump Script_branch_180
@ 251

Script_branch_251: @ 251
	SetVar 0x8001, 0x60
	Jump Script_branch_180
@ 25d

Script_branch_25d: @ 25d
	SetVar 0x8001, 0x61
	Jump Script_branch_180
@ 269

Script_branch_269: @ 269
	SetVar 0x8001, 0x62
	Jump Script_branch_180
@ 275

Script_branch_275: @ 275
	CheckMoney 0x800c, 0xc8
	Return
@ 27f

Script_branch_27f: @ 27f
	CheckMoney 0x800c, 0xc8
	Return
@ 289

Script_branch_289: @ 289
	CheckMoney 0x800c, 0xc8
	Return
@ 293

Script_branch_293: @ 293
	CheckMoney 0x800c, 0xc8
	Return
@ 29d

Script_branch_29d: @ 29d
	Cmd_334 0x23, 0xc8
	TakeMoney 200
	Return
@ 2ab

Script_branch_2ab: @ 2ab
	Cmd_334 0x23, 0xc8
	TakeMoney 200
	Return
@ 2b9

Script_branch_2b9: @ 2b9
	Cmd_334 0x23, 0xc8
	TakeMoney 200
	Return
@ 2c7

Script_branch_2c7: @ 2c7
	Cmd_334 0x23, 0xc8
	TakeMoney 200
	Return
@ 2d5

Script_5: @ 2d5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	Jump Script_branch_2e8
@ 2e6

.byte 0x2 @ 0x2e6
.byte 0x0 @ 0x2e7

Script_branch_2e8: @ 2e8
	Message 0xe
	Multi2 0x1e, 0x7, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x13, 0x0
	Cmd_42 0x14, 0x1
	Cmd_42 0x15, 0x2
	Cmd_42 0x16, 0x3
	Cmd_42 0x17, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_35b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_366
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_371
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_37c
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_387
	Jump Script_branch_387
@ 359

.byte 0x2 @ 0x359
.byte 0x0 @ 0x35a

Script_branch_35b: @ 35b
	Message 0xf
	Jump Script_branch_2e8
@ 364

.byte 0x2 @ 0x364
.byte 0x0 @ 0x365

Script_branch_366: @ 366
	Message 0x10
	Jump Script_branch_2e8
@ 36f

.byte 0x2 @ 0x36f
.byte 0x0 @ 0x370

Script_branch_371: @ 371
	Message 0x11
	Jump Script_branch_2e8
@ 37a

.byte 0x2 @ 0x37a
.byte 0x0 @ 0x37b

Script_branch_37c: @ 37c
	Message 0x12
	Jump Script_branch_2e8
@ 385

.byte 0x2 @ 0x385
.byte 0x0 @ 0x386

Script_branch_387: @ 387
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 38d

.byte 0x0 @ 0x38d
.byte 0x0 @ 0x38e
.byte 0x0 @ 0x38f

@ end_0x390
