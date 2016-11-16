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
	CheckPlaceStored 0x800c, 0xf
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_8e
	CheckBadge 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_8e
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ae
	CloseMsgOnKeyPress
	Jump Script_branch_66d
@ 8c

.byte 0x2 @ 0x8c
.byte 0x0 @ 0x8d

Script_branch_8e: @ 8e
	Message 0x2
	CheckEffectHm 0x8004
	If 0x8004, 0xcb
	CompareLastResultCall EQUAL, Script_branch_14a
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_66d
@ ac

.byte 0x2 @ 0xac
.byte 0x0 @ 0xad

Script_branch_ae: @ ae
	CheckPlaceStored 0x800c, 0xf
	CopyVar 0x8004, 0x800c
	SetVarPokeNick 0x0, 0x800c
	Message 0x1
	CloseMsgOnKeyPress
	PrepHmEffect 0x8004
	HMEffect 0x0, 0x8005
	Return2 0x7, 0x800c
	RemovePeople 0x800d
	CheckEffectHm 0x8004
	DeActivateLeader 0x13, 0x8004, 0x0, 0x0, 0x0
Script_branch_e8: @ e8
	Return2 0x1, 0x800c
	If 0x8005, 0x0
	CompareLastResultJump EQUAL, Script_branch_e8
	Jump Script_branch_66d
@ 101

.byte 0x2 @ 0x101
.byte 0x0 @ 0x102

Script_9: @ 103
	LockAll
	SetVarPokeNick 0x0, 0x8000
	Message 0x1
	CloseMsgOnKeyPress
	PrepHmEffect 0x8000
	HMEffect 0x0, 0x8005
	Return2 0x7, 0x800c
	RemovePeople 0x800d
	CheckEffectHm 0x8004
	DeActivateLeader 0x13, 0x8004, 0x0, 0x0, 0x0
Script_branch_133: @ 133
	Return2 0x1, 0x800c
	If 0x8005, 0x0
	CompareLastResultJump EQUAL, Script_branch_133
	ReleaseAll
	End
@ 14a

Script_branch_14a: @ 14a
	If 0x40cd, 0x0
	CompareLastResultJump 0x5, Script_branch_221
	If 0x40b1, 0x1
	CompareLastResultJump 0x5, Script_branch_221
	Call Function_17f
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_221
	SetVar 0x40cd, 0x1
	Return
@ 17f

Function_17f: @ 17f
	SetVar 0x800c, 0x0
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x49
	CompareLastResultJump EQUAL, Script_branch_1ce
	If 0x8004, 0x4a
	CompareLastResultJump EQUAL, Script_branch_1dd
	If 0x8004, 0x4b
	CompareLastResultJump EQUAL, Script_branch_1ec
	If 0x8004, 0x4c
	CompareLastResultJump EQUAL, Script_branch_1fb
	If 0x8004, 0x4d
	CompareLastResultJump EQUAL, Script_branch_20a
	Return
@ 1ce

Script_branch_1ce: @ 1ce
	If 0x8005, 0x21
	CompareLastResultJump EQUAL, Script_branch_219
	Return
@ 1dd

Script_branch_1dd: @ 1dd
	If 0x8005, 0x22
	CompareLastResultJump EQUAL, Script_branch_219
	Return
@ 1ec

Script_branch_1ec: @ 1ec
	If 0x8005, 0x22
	CompareLastResultJump EQUAL, Script_branch_219
	Return
@ 1fb

Script_branch_1fb: @ 1fb
	If 0x8005, 0x21
	CompareLastResultJump EQUAL, Script_branch_219
	Return
@ 20a

Script_branch_20a: @ 20a
	If 0x8005, 0x22
	CompareLastResultJump EQUAL, Script_branch_219
	Return
@ 219

Script_branch_219: @ 219
	SetVar 0x800c, 0x1
	Return
@ 221

Script_branch_221: @ 221
	Return
@ 223

Script_2: @ 223
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckPlaceStored 0x800c, 0xf9
	CopyVar 0x8004, 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_275
	CheckBadge 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_275
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_284
	CloseMsgOnKeyPress
	Jump Script_branch_66d
@ 273

.byte 0x2 @ 0x273
.byte 0x0 @ 0x274

Script_branch_275: @ 275
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_66d
@ 282

.byte 0x2 @ 0x282
.byte 0x0 @ 0x283

Script_branch_284: @ 284
	SetVarPokeNick 0x0, 0x8004
	Message 0x5
	CloseMsgOnKeyPress
	PrepHmEffect 0x8004
	HMEffect 0x1, 0x8005
	Return2 0xa, 0x800c
	RemovePeople 0x800d
	CheckEffectHm 0x8004
	DeActivateLeader 0x18, 0x8004, 0x0, 0x0, 0x0
Script_branch_2b2: @ 2b2
	Return2 0x1, 0x800c
	If 0x8005, 0x0
	CompareLastResultJump EQUAL, Script_branch_2b2
	Jump Script_branch_66d
@ 2cb

.byte 0x2 @ 0x2cb
.byte 0x0 @ 0x2cc

Script_10: @ 2cd
	LockAll
	SetVarPokeNick 0x0, 0x8000
	Message 0x5
	CloseMsgOnKeyPress
	PrepHmEffect 0x8000
	HMEffect 0x1, 0x8005
	Return2 0xa, 0x800c
	RemovePeople 0x800d
	CheckEffectHm 0x8004
	DeActivateLeader 0x18, 0x8004, 0x0, 0x0, 0x0
Script_branch_2fd: @ 2fd
	Return2 0x1, 0x800c
	If 0x8005, 0x0
	CompareLastResultJump EQUAL, Script_branch_2fd
	ReleaseAll
	End
@ 314

Script_3: @ 314
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	HmFunctions 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3bd
	CheckPlaceStored 0x800c, 0x46
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_372
	CheckBadge 0x5, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_372
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_381
	CloseMsgOnKeyPress
	Jump Script_branch_66d
@ 370

.byte 0x2 @ 0x370
.byte 0x0 @ 0x371

Script_branch_372: @ 372
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_66d
@ 37f

.byte 0x2 @ 0x37f
.byte 0x0 @ 0x380

Script_branch_381: @ 381
	HmFunctions 0x1
	CheckPlaceStored 0x800c, 0x46
	CopyVar 0x8004, 0x800c
	SetVarPokeNick 0x0, 0x800c
	Message 0xa
	PrepHmEffect 0x8004
	CloseMsgOnKeyPress
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	CheckEffectHm 0x8004
	DeActivateLeader 0x16, 0x8004, 0x0, 0x0, 0x0
	Jump Script_branch_66d
@ 3bb

.byte 0x2 @ 0x3bb
.byte 0x0 @ 0x3bc

Script_branch_3bd: @ 3bd
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_66d
@ 3ca

.byte 0x2 @ 0x3ca
.byte 0x0 @ 0x3cb

Script_11: @ 3cc
	LockAll
	HmFunctions 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3bd
	HmFunctions 0x1
	SetVarPokeNick 0x0, 0x8000
	Message 0xa
	CloseMsgOnKeyPress
	PrepHmEffect 0x8000
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	CheckEffectHm 0x8004
	DeActivateLeader 0x16, 0x8004, 0x0, 0x0, 0x0
	Jump Script_branch_675
@ 40e

Script_4: @ 40e
	PlayFanfare 0x5dc
	LockAll
	CheckPlaceStored 0x800c, 0x1af
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_469
	CheckBadge 0x6, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_469
	CheckFollow 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_478
	Message 0x12
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_487
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 467

.byte 0x2 @ 0x467
.byte 0x0 @ 0x468

Script_branch_469: @ 469
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 476

.byte 0x2 @ 0x476
.byte 0x0 @ 0x477

Script_branch_478: @ 478
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 485

.byte 0x2 @ 0x485
.byte 0x0 @ 0x486

Script_branch_487: @ 487
	CheckPlaceStored 0x800c, 0x1af
	CopyVar 0x8004, 0x800c
	SetVarPokeNick 0x0, 0x800c
	Message 0x13
	CloseMsgOnKeyPress
	RockClimbAnimation 0x8004
	CheckEffectHm 0x8004
	DeActivateLeader 0x1a, 0x8004, 0x0, 0x0, 0x0
	Jump Script_branch_671
@ 4b7

.byte 0x2 @ 0x4b7
.byte 0x0 @ 0x4b8

Script_12: @ 4b9
	LockAll
	SetVarPokeNick 0x0, 0x8000
	Message 0x13
	CloseMsgOnKeyPress
	RockClimbAnimation 0x8000
	CheckEffectHm 0x8004
	DeActivateLeader 0x1a, 0x8004, 0x0, 0x0, 0x0
	ReleaseAll
	End
@ 4dd

Script_5: @ 4dd
	PlayFanfare 0x5dc
	LockAll
	CheckFollow 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_512
	Message 0xc
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_51f
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 510

.byte 0x2 @ 0x510
.byte 0x0 @ 0x511

Script_branch_512: @ 512
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 51f

Script_branch_51f: @ 51f
	CheckPlaceStored 0x800c, 0x39
	CopyVar 0x8004, 0x800c
	SetVarPokeNick 0x0, 0x800c
	Message 0xd
	CloseMsgOnKeyPress
	SurfAnimation 0x8004
	CheckEffectHm 0x8004
	DeActivateLeader 0x15, 0x8004, 0x0, 0x0, 0x0
	Jump Script_branch_671
@ 54f

.byte 0x2 @ 0x54f
.byte 0x0 @ 0x550

Script_13: @ 551
	LockAll
	SetVarPokeNick 0x0, 0x8000
	Message 0xd
	CloseMsgOnKeyPress
	Release 0xff
	SurfAnimation 0x8000
	Lock 0xff
	CheckEffectHm 0x8004
	DeActivateLeader 0x15, 0x8004, 0x0, 0x0, 0x0
	ReleaseAll
	End
@ 57d

Script_6: @ 57d
	PlayFanfare 0x5dc
	LockAll
	CheckPlaceStored 0x800c, 0x1b0
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_5b4
	Message 0xf
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c3
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 5b2

.byte 0x2 @ 0x5b2
.byte 0x0 @ 0x5b3

Script_branch_5b4: @ 5b4
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 5c1

.byte 0x2 @ 0x5c1
.byte 0x0 @ 0x5c2

Script_branch_5c3: @ 5c3
	CheckPlaceStored 0x800c, 0x1b0
	CopyVar 0x8004, 0x800c
	SetVarPokeNick 0x0, 0x800c
	Message 0x10
	CloseMsgOnKeyPress
	PrepHmEffect 0x8004
	CheckEffectHm 0x8004
	DeActivateLeader 0x17, 0x8004, 0x0, 0x0, 0x0
	CheckEffectHm 0x8004
	If 0x8004, 0x169
	CompareLastResultCall EQUAL, Script_branch_606
	Jump Script_branch_671
@ 604

.byte 0x2 @ 0x604
.byte 0x0 @ 0x605

Script_branch_606: @ 606
	SetFlag 0x7b
	Return
@ 60c

Script_15: @ 60c
	LockAll
	SetVarPokeNick 0x0, 0x8000
	Message 0x10
	CloseMsgOnKeyPress
	PrepHmEffect 0x8000
	DefogDuration 0x1
	PlayFanfare 0x64c
	DefogAnimation
	CheckEffectHm 0x8004
	DeActivateLeader 0x17, 0x8004, 0x0, 0x0, 0x0
	CheckEffectHm 0x8004
	If 0x8004, 0x169
	CompareLastResultCall EQUAL, Script_branch_606
	Jump Script_branch_675
@ 64c

Script_16: @ 64c
	LockAll
	SetVarPokeNick 0x0, 0x8000
	Message 0x1a
	CloseMsgOnKeyPress
	PrepHmEffect 0x8000
	FlashDuration 0x1
	FlashAnimation
	Return2 0x2a, 0x800c
	Jump Script_branch_675
@ 66d

Script_branch_66d: @ 66d
	ReleaseAll
	End
@ 671

Script_branch_671: @ 671
	ReleaseAll
	End
@ 675

Script_branch_675: @ 675
	ReleaseAll
	End
@ 679

Script_7: @ 679
	PlayFanfare 0x5dc
	LockAll
	CheckPlaceStored 0x800c, 0x7f
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_6c3
	CheckBadge 0x7, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6c3
	Message 0x16
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6d2
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 6c1

.byte 0x2 @ 0x6c1
.byte 0x0 @ 0x6c2

Script_branch_6c3: @ 6c3
	Message 0x18
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_671
@ 6d0

.byte 0x2 @ 0x6d0
.byte 0x0 @ 0x6d1

Script_branch_6d2: @ 6d2
	CheckPlaceStored 0x800c, 0x7f
	CopyVar 0x8004, 0x800c
	SetVarPokeNick 0x0, 0x800c
	Message 0x17
	CloseMsgOnKeyPress
	WaterfallAnimation 0x8004
	CheckEffectHm 0x8004
	DeActivateLeader 0x19, 0x8004, 0x0, 0x0, 0x0
	Jump Script_branch_671
@ 702

.byte 0x2 @ 0x702
.byte 0x0 @ 0x703

Script_14: @ 704
	LockAll
	SetVarPokeNick 0x0, 0x8000
	Message 0x17
	CloseMsgOnKeyPress
	Release 0xff
	WaterfallAnimation 0x8000
	Lock 0xff
	CheckEffectHm 0x8004
	DeActivateLeader 0x19, 0x8004, 0x0, 0x0, 0x0
	ReleaseAll
	End
@ 730

Script_8: @ 730
	End
@ 732

.byte 0x0 @ 0x732
.byte 0x0 @ 0x733

@ end_0x734
