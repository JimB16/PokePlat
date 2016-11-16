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
	.hword 0xfd13
@ 3a

Script_1: @ 3a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8007, 0x0
	CheckFlag 0x88
	CompareLastResultCall LESSER, Script_branch_6f
	If 0x4001, 0x0
	CompareLastResultJump EQUAL, Script_branch_77
	If 0x4001, 0x1
	CompareLastResultJump EQUAL, Script_branch_80
	End
@ 6f

Script_branch_6f: @ 6f
	SetVar 0x8007, 0x1
	Return
@ 77

Script_branch_77: @ 77
	Message 0x1
	Jump Script_branch_b5
@ 80

Script_branch_80: @ 80
	Message 0xb
	Jump Script_branch_b5
@ 89

Script_branch_89: @ 89
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ac
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_f5
	End
@ ac

Script_branch_ac: @ ac
	Message 0x6
	Jump Script_branch_d5
@ b5

Script_branch_b5: @ b5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_89
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2b3
	End
@ d5

Script_branch_d5: @ d5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f5
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2b3
	End
@ f5

Script_branch_f5: @ f5
	CheckPartyNumber 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_115
	If 0x800c, 0x1
	CompareLastResultJump 0x5, Script_branch_121
	End
@ 115

Script_branch_115: @ 115
	SetVar 0x4002, 0x0
	Jump Script_branch_16c
@ 121

Script_branch_121: @ 121
	Message 0x4
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x4002
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x4002, 0xff
	CompareLastResultJump EQUAL, Script_branch_2b3
	CheckPokeEgg 0x4002, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2be
	Jump Script_branch_16c
@ 16c

Script_branch_16c: @ 16c
	Message 0x5
	CloseMsgOnKeyPress
	CheckFacePosition 0x8006
	If 0x8006, 0x0
	CompareLastResultJump EQUAL, Script_branch_19e
	If 0x8006, 0x2
	CompareLastResultJump EQUAL, Script_branch_1b8
	If 0x8006, 0x3
	CompareLastResultJump EQUAL, Script_branch_1d2
	End
@ 19e

Script_branch_19e: @ 19e
	ApplyMovement 0x0, Movement_374
	WaitMovement
	ApplyMovement 0xff, Movement_340
	WaitMovement
	Jump Script_branch_1ec
@ 1b8

Script_branch_1b8: @ 1b8
	ApplyMovement 0x0, Movement_380
	WaitMovement
	ApplyMovement 0xff, Movement_348
	WaitMovement
	Jump Script_branch_1ec
@ 1d2

Script_branch_1d2: @ 1d2
	ApplyMovement 0x0, Movement_38c
	WaitMovement
	ApplyMovement 0xff, Movement_354
	WaitMovement
	Jump Script_branch_1ec
@ 1ec

Script_branch_1ec: @ 1ec
	SetFlag 0x88
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DressPokemon 0x4002, 0x8005, 0x8007
	CallEnd
	ApplyMovement 0xff, Movement_360
	WaitMovement
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8006, 0x0
	CompareLastResultJump EQUAL, Script_branch_245
	If 0x8006, 0x2
	CompareLastResultJump EQUAL, Script_branch_25f
	If 0x8006, 0x3
	CompareLastResultJump EQUAL, Script_branch_279
	End
@ 245

Script_branch_245: @ 245
	ApplyMovement 0xff, Movement_368
	WaitMovement
	ApplyMovement 0x0, Movement_398
	WaitMovement
	Jump Script_branch_293
@ 25f

Script_branch_25f: @ 25f
	ApplyMovement 0xff, Movement_368
	WaitMovement
	ApplyMovement 0x0, Movement_3a4
	WaitMovement
	Jump Script_branch_293
@ 279

Script_branch_279: @ 279
	ApplyMovement 0xff, Movement_368
	WaitMovement
	ApplyMovement 0x0, Movement_3b0
	WaitMovement
	Jump Script_branch_293
@ 293

Script_branch_293: @ 293
	If 0x8005, 0x0
	CompareLastResultJump EQUAL, Script_branch_335
	SetVar 0x4001, 0x1
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_2c7
@ 2b3

Script_branch_2b3: @ 2b3
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2be

Script_branch_2be: @ 2be
	Message 0xd
	Jump Script_branch_121
@ 2c7

Script_branch_2c7: @ 2c7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePhraseBox1W 0x0, 0x800c, 0x8004
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_328
	StorePhotoName 0x8004
	RandomEvent 0x36
	Cmd_316
	SetvarPhraseBox1W 0x0, 0x8004
	Message 0x8
	ApplyMovement 0x0, Movement_3bc
	WaitMovement
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_3c4
	WaitMovement
	ReleaseAll
	End
@ 328

Script_branch_328: @ 328
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	Jump Script_branch_2c7
@ 335

Script_branch_335: @ 335
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 340

Movement_340: @ 340
	WalkUp 0x2
	EndMovement 0x0
@ 348

Movement_348: @ 348
	WalkLeft 0x1
	WalkUp 0x1
	EndMovement 0x0
@ 354

Movement_354: @ 354
	WalkRight 0x1
	WalkUp 0x1
	EndMovement 0x0
@ 360

Movement_360: @ 360
	SeeDown 0x1
	EndMovement 0x0
@ 368

Movement_368: @ 368
	WalkDown 0x2
	SeeUp 0x1
	EndMovement 0x0
@ 374

Movement_374: @ 374
	WalkLeftFast 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 380

Movement_380: @ 380
	WalkLeftFast 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 38c

Movement_38c: @ 38c
	WalkRightFast 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 398

Movement_398: @ 398
	WalkRightFast 0x1
	SeeDown 0x1
	EndMovement 0x0
@ 3a4

Movement_3a4: @ 3a4
	WalkRightFast 0x1
	SeeDown 0x1
	EndMovement 0x0
@ 3b0

Movement_3b0: @ 3b0
	WalkLeftFast 0x1
	SeeDown 0x1
	EndMovement 0x0
@ 3bc

Movement_3bc: @ 3bc
	SeeRight 0x1
	EndMovement 0x0
@ 3c4

Movement_3c4: @ 3c4
	SeeDown 0x1
	EndMovement 0x0
@ 3cc

Script_2: @ 3cc
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x0, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 409

Script_3: @ 409
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x1, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 446

Script_4: @ 446
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x2, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 483

Script_5: @ 483
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x3, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x3, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 4c0

Script_6: @ 4c0
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x4, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x4, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 4fd

Script_7: @ 4fd
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x5, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x5, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 53a

Script_8: @ 53a
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x6, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x6, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 577

Script_9: @ 577
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x7, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x7, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 5b4

Script_10: @ 5b4
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x8, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x8, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 5f1

Script_11: @ 5f1
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0x9, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 62e

Script_12: @ 62e
	PlayFanfare 0x5dc
	LockAll
	CheckDress 0xa, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_66b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	DisplayDressedPokemon 0xa, 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 66b

Script_branch_66b: @ 66b
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 676

Script_13: @ 676
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 689

Script_14: @ 689
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 69c

@ end_0x69c
