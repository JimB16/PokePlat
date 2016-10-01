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
	script Script_14
	script Script_15
	script Script_16
	.hword 0xfd13
@ 42

Script_1: @ 42
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 55

Script_2: @ 55
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x1
	CompareLastResultJump EQUAL, Script_branch_3d8
	Message 0x1
	CheckFlag 0x79
	CompareLastResultJump LESSER, Script_branch_4b6
	If 0x40b4, 0x0
	CompareLastResultJump 0x5, Script_branch_3f2
	CheckActFossil 0x8000
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_4ab
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3e7
	If 0x8000, 0x1
	CompareLastResultJump EQUAL, Script_branch_3bc
	SetVar 0x8001, 0x0
	CheckItem 0x67, 0x1, 0x800c
	ScriptCmd_AddValue 0x8001, 0x800c
	CheckItem 0x65, 0x1, 0x800c
	ScriptCmd_AddValue 0x8001, 0x800c
	CheckItem 0x66, 0x1, 0x800c
	ScriptCmd_AddValue 0x8001, 0x800c
	CheckItem 0x63, 0x1, 0x800c
	ScriptCmd_AddValue 0x8001, 0x800c
	CheckItem 0x64, 0x1, 0x800c
	ScriptCmd_AddValue 0x8001, 0x800c
	CheckItem 0x68, 0x1, 0x800c
	ScriptCmd_AddValue 0x8001, 0x800c
	CheckItem 0x69, 0x1, 0x800c
	ScriptCmd_AddValue 0x8001, 0x800c
	If 0x8001, 0x1
	CompareLastResultJump EQUAL, Script_branch_3bc
	SetVar 0x8004, 0x0
	SetVar 0x8005, 0x0
	Multi 0x1, 0x1, 0x0, 0x1, 0x8003
Script_branch_13e: @ 13e
	If 0x8005, 0x0
	CompareLastResultCall EQUAL, Script_branch_2dc
	If 0x8005, 0x1
	CompareLastResultCall EQUAL, Script_branch_2ec
	If 0x8005, 0x2
	CompareLastResultCall EQUAL, Script_branch_2fc
	If 0x8005, 0x3
	CompareLastResultCall EQUAL, Script_branch_30c
	If 0x8005, 0x4
	CompareLastResultCall EQUAL, Script_branch_31c
	If 0x8005, 0x5
	CompareLastResultCall EQUAL, Script_branch_32c
	If 0x8005, 0x6
	CompareLastResultCall EQUAL, Script_branch_33c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_219
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_34c
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_354
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_35c
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_364
	If 0x8004, 0x4
	CompareLastResultCall EQUAL, Script_branch_36c
	If 0x8004, 0x5
	CompareLastResultCall EQUAL, Script_branch_374
	If 0x8004, 0x6
	CompareLastResultCall EQUAL, Script_branch_37c
	CopyVar 0x8006, 0x8005
	ScriptCmd_AddValue 0x8006, 0x9c
	ChoiceMulti 0x8006, 0x8004
	Jump Script_branch_225
Script_branch_219: @ 219
	ScriptCmd_AddValue 0x8005, 0x1
	Jump Script_branch_13e
Script_branch_225: @ 225
	ScriptCmd_AddValue 0x8004, 0x1
	ScriptCmd_AddValue 0x8005, 0x1
	If2 0x8004, 0x8001
	CompareLastResultJump 0x5, Script_branch_13e
	ChoiceMulti 0x2c, 0x8004
	CloseMulti
	If 0x8003, 0xff
	CompareLastResultJump EQUAL, Script_branch_3e7
	If2 0x8003, 0x4000
	CompareLastResultJump EQUAL, Script_branch_3e7
	If 0x8003, 0x0
	CompareLastResultCall EQUAL, Script_branch_384
	If 0x8003, 0x1
	CompareLastResultCall EQUAL, Script_branch_38c
	If 0x8003, 0x2
	CompareLastResultCall EQUAL, Script_branch_394
	If 0x8003, 0x3
	CompareLastResultCall EQUAL, Script_branch_39c
	If 0x8003, 0x4
	CompareLastResultCall EQUAL, Script_branch_3a4
	If 0x8003, 0x5
	CompareLastResultCall EQUAL, Script_branch_3ac
	If 0x8003, 0x6
	CompareLastResultCall EQUAL, Script_branch_3b4
	CheckItemChosen 0x40b4, 0x8002
	If 0x40b4, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e7
	GiveItem 0x8002, 0x1, 0x800c
	Jump Script_branch_3d8
Script_branch_2dc: @ 2dc
	SetVar 0x4000, 0x67
	CheckItem 0x4000, 0x1, 0x800c
	Return
@ 2ec

Script_branch_2ec: @ 2ec
	SetVar 0x4000, 0x65
	CheckItem 0x4000, 0x1, 0x800c
	Return
@ 2fc

Script_branch_2fc: @ 2fc
	SetVar 0x4000, 0x66
	CheckItem 0x4000, 0x1, 0x800c
	Return
@ 30c

Script_branch_30c: @ 30c
	SetVar 0x4000, 0x63
	CheckItem 0x4000, 0x1, 0x800c
	Return
@ 31c

Script_branch_31c: @ 31c
	SetVar 0x4000, 0x64
	CheckItem 0x4000, 0x1, 0x800c
	Return
@ 32c

Script_branch_32c: @ 32c
	SetVar 0x4000, 0x68
	CheckItem 0x4000, 0x1, 0x800c
	Return
@ 33c

Script_branch_33c: @ 33c
	SetVar 0x4000, 0x69
	CheckItem 0x4000, 0x1, 0x800c
	Return
@ 34c

Script_branch_34c: @ 34c
	CopyVar 0x4001, 0x4000
	Return
@ 354

Script_branch_354: @ 354
	CopyVar 0x4002, 0x4000
	Return
@ 35c

Script_branch_35c: @ 35c
	CopyVar 0x4003, 0x4000
	Return
@ 364

Script_branch_364: @ 364
	CopyVar 0x4004, 0x4000
	Return
@ 36c

Script_branch_36c: @ 36c
	CopyVar 0x4005, 0x4000
	Return
@ 374

Script_branch_374: @ 374
	CopyVar 0x4006, 0x4000
	Return
@ 37c

Script_branch_37c: @ 37c
	CopyVar 0x4007, 0x4000
	Return
@ 384

Script_branch_384: @ 384
	CopyVar 0x8002, 0x4001
	Return
@ 38c

Script_branch_38c: @ 38c
	CopyVar 0x8002, 0x4002
	Return
@ 394

Script_branch_394: @ 394
	CopyVar 0x8002, 0x4003
	Return
@ 39c

Script_branch_39c: @ 39c
	CopyVar 0x8002, 0x4004
	Return
@ 3a4

Script_branch_3a4: @ 3a4
	CopyVar 0x8002, 0x4005
	Return
@ 3ac

Script_branch_3ac: @ 3ac
	CopyVar 0x8002, 0x4006
	Return
@ 3b4

Script_branch_3b4: @ 3b4
	CopyVar 0x8002, 0x4007
	Return
@ 3bc

Script_branch_3bc: @ 3bc
	CompareItemPokeFossil 0x8002, 0x8004, 0x1
	CheckItemChosen 0x40b4, 0x8002
	GiveItem 0x8002, 0x1, 0x800c
	Jump Script_branch_3d8
Script_branch_3d8: @ 3d8
	SetFlag 0x1
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3e7

Script_branch_3e7: @ 3e7
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f2

Script_branch_3f2: @ 3f2
	SetVarPokeStored 0x0, 0x40b4, 0x0, 0x0
	Message 0x7
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_4a0
	SetVarPokeStored 0x1, 0x40b4, 0x0, 0x0
	SetVarHero 0x0
	Soundfr 0x486
	Message 0x8
	Cmd_4f
	GivePokemon 0x40b4, 0x14, 0x0, 0x800c
	RandomEvent 0x73
	SetVar 0x40b4, 0x0
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_459
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_49a
	End
@ 459

Script_branch_459: @ 459
	CloseMsgOnKeyPress
	CheckPartyNumber 0x4000
	ScriptCmd_SubValue 0x4000, 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChoosePokeNick 0x4000, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall 0x5, Script_branch_494
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 494

Script_branch_494: @ 494
	RandomEvent 0x31
	Return
@ 49a

Script_branch_49a: @ 49a
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4a0

Script_branch_4a0: @ 4a0
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4ab

Script_branch_4ab: @ 4ab
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4b6

Script_branch_4b6: @ 4b6
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4c1

Script_3: @ 4c1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4d4

Script_4: @ 4d4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4e7

Script_5: @ 4e7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4fa

Script_6: @ 4fa
	PlayFanfare 0x5dc
	LockAll
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 50b

Script_7: @ 50b
	PlayFanfare 0x5dc
	LockAll
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51c

Script_8: @ 51c
	PlayFanfare 0x5dc
	LockAll
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 52d

Script_9: @ 52d
	PlayFanfare 0x5dc
	LockAll
	Message 0x16
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53e

Script_10: @ 53e
	PlayFanfare 0x5dc
	LockAll
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 54f

Script_11: @ 54f
	PlayFanfare 0x5dc
	LockAll
	Message 0x18
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 560

Script_12: @ 560
	PlayFanfare 0x5dc
	LockAll
	Message 0x19
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 571

Script_13: @ 571
	PlayFanfare 0x5dc
	LockAll
	Message 0x1a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 582

Script_14: @ 582
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 595

Script_15: @ 595
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5a8

Script_16: @ 5a8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5bb

.byte 0x0 @ 0x5bb

@ end_0x5bc
