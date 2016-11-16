.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	If 0x40de, 0x0
	CompareLastResultJump EQUAL, Script_branch_54
	SetFlag 0x1ea
	SetFlag 0x1eb
	StorePokeColosseumLost 0x4000
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_56
	CallBTowerFunctions 0x37, 0x0, 0x4000
	CopyVar 0x4020, 0x4000
	CallBTowerFunctions 0x37, 0x1, 0x4000
	CopyVar 0x4021, 0x4000
Script_branch_54: @ 54
	End
@ 56

Script_branch_56: @ 56
	CallBTowerFunctions 0x37, 0x0, 0x4000
	CopyVar 0x4021, 0x4000
	CallBTowerFunctions 0x37, 0x1, 0x4000
	CopyVar 0x4020, 0x4000
	End
@ 74

Script_2: @ 74
	If 0x40de, 0x0
	CompareLastResultCall 0x5, Script_branch_90
	If 0x40de, 0x3
	CompareLastResultJump EQUAL, Script_branch_9e
Script_branch_8e: @ 8e
	End
@ 90

Script_branch_90: @ 90
	RemovePeople2 0xff
	CheckPersonPosition 0x8, 0x0, 0x0
	Return
@ 9e

Script_branch_9e: @ 9e
	SetOwPosition 0x2, 0x5, 0x0, 0x5, 0x3
	SetOwPosition 0x3, 0x5, 0x0, 0x6, 0x3
	Jump Script_branch_8e
@ bc

.byte 0x2 @ 0xbc
.byte 0x0 @ 0xbd

Function_be: @ be
	Message 0x2
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	Return
@ cb

Script_branch_cb: @ cb
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_114
	Return2 0x1e, 0x800c
	SetVar 0x40d8, 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x146, 0x0, 0x7, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 114

Script_branch_114: @ 114
	Return2 0x1e, 0x800c
	SetVar 0x40d8, 0x1
	FriendBT2
	FriendBT 0x6
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	FriendBT2
	FriendBT 0x8
	DeleteEntry
	Warp 0x146, 0x0, 0x7, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 156

Script_3: @ 156
	LockAll
	SetVar 0x40de, 0x3
	Call Function_48d
	CallBTowerFunctions 0x2b, 0x0, 0x800c
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_39e
	Jump Script_branch_2b0
@ 17f

.byte 0x2 @ 0x17f
.byte 0x0 @ 0x180

Script_4: @ 181
	LockAll
	SetVar 0x40de, 0x3
	Call Function_48d
	Call Function_4a1
	Jump Script_branch_2e8
@ 19b

.byte 0x2 @ 0x19b
.byte 0x0 @ 0x19c

Function_19d: @ 19d
	CallBTowerFunctions 0x28, 0x0, 0x0
	Call Function_4c5
	Call Function_529
	SetBCastleFunctionId 0x0
	Cmd_30
	CloseMsgOnKeyPress
	Call Function_535
	SetBCastleFunctionId 0x1
	Cmd_30
	CloseMsgOnKeyPress
	Call Function_505
	CallBTowerFunctions 0x2a, 0x0, 0x0
	CheckTrainerLost 0x800c
	CopyVar 0x8004, 0x800c
	Return
@ 1df

Function_1df: @ 1df
	CallBTowerFunctions 0x28, 0x0, 0x0
	Call Function_4c5
	Call Function_529
	SetBCastleFunctionId 0x0
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	Call Function_535
	SetBCastleFunctionId 0x1
	Return2 0x1e, 0x800c
	CloseMsgOnKeyPress
	Call Function_505
	FriendBT2
	FriendBT 0x4
	CallBTowerFunctions 0x2a, 0x0, 0x0
	CheckTrainerLost 0x800c
	CopyVar 0x8004, 0x800c
	Return
@ 22f

Script_branch_22f: @ 22f
	CallBTowerFunctions 0x25, 0x0, 0x0
	SetVar 0x4000, 0x0
	Jump Script_branch_cb
@ 243

.byte 0x2 @ 0x243
.byte 0x0 @ 0x244

Script_branch_245: @ 245
	CallBTowerFunctions 0x26, 0x0, 0x0
	SetVar 0x4000, 0x1
	Jump Script_branch_cb
@ 259

.byte 0x2 @ 0x259
.byte 0x0 @ 0x25a

Script_branch_25b: @ 25b
	SetVar 0x40d8, 0x2
	CallBTowerFunctions 0x27, 0x0, 0x0
	CloseBTower
	Message 0x0
	ShowClockSave
	CheckSaveData 0x800c
	HideClockSave
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	CallBTowerFunctions 0x2, 0x0, 0x0
	End
@ 296

Script_branch_296: @ 296
	Jump Script_branch_22f
@ 29c

.byte 0x2 @ 0x29c
.byte 0x0 @ 0x29d

Function_29e: @ 29e
	CallBTowerFunctions 0x22, 0x0, 0x800c
	CallBTowerFunctions 0x23, 0x0, 0x800c
	Return
@ 2b0

Script_branch_2b0: @ 2b0
	Call Function_19d
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_22f
	Call Function_29e
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_245
	Call Function_541
	Call Function_565
	Call Function_be
Script_branch_2e8: @ 2e8
	CallBTowerFunctions 0x21, 0x0, 0x8004
	SetVariableNumber 0x0, 0x8004
	Message 0x3
	Multi3 0x1f, 0xb, 0x0, 0x0, 0x800c
	Cmd_33a 0x1
	TxtMsgScrpMulti 0x92, 0xff, 0x0
	TxtMsgScrpMulti 0x93, 0xff, 0x1
	TxtMsgScrpMulti 0x94, 0xff, 0x2
	CloseMulti4
	CloseMsgOnKeyPress
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_354
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_362
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_380
	Jump Script_branch_354
@ 352

.byte 0x2 @ 0x352
.byte 0x0 @ 0x353

Script_branch_354: @ 354
	Call Function_589
	Jump Script_branch_2b0
@ 360

.byte 0x2 @ 0x360
.byte 0x0 @ 0x361

Script_branch_362: @ 362
	Message 0x4
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_25b
	Jump Script_branch_2e8
@ 37e

.byte 0x2 @ 0x37e
.byte 0x0 @ 0x37f

Script_branch_380: @ 380
	Message 0x5
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_296
	Jump Script_branch_2e8
@ 39c

.byte 0x2 @ 0x39c
.byte 0x0 @ 0x39d

Script_branch_39e: @ 39e
	Call Function_1df
	If 0x8004, 0x0
	CompareLastResultJump EQUAL, Script_branch_22f
	Call Function_29e
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_245
	Call Function_541
	Call Function_565
	Call Function_be
Script_branch_3d6: @ 3d6
	CallBTowerFunctions 0x21, 0x0, 0x8004
	SetVariableNumber 0x0, 0x8004
	Message 0x3
	Multi3 0x1f, 0xd, 0x0, 0x0, 0x800c
	Cmd_33a 0x1
	TxtMsgScrpMulti 0x92, 0xff, 0x0
	TxtMsgScrpMulti 0x94, 0xff, 0x1
	CloseMulti4
	CloseMsgOnKeyPress
	SetVar 0x4000, 0x0
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_452
Script_branch_418: @ 418
	Message 0xc
	FriendBT2
	FriendBT 0x5
	CallBTowerWireFunction 0x2, 0x4000, 0x800c
	StorePChosenWireBTower 0x2, 0x4000
	CloseMsgOnKeyPress
	CopyVar 0x8008, 0x4000
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_474
	Call Function_589
	Jump Script_branch_39e
@ 450

.byte 0x2 @ 0x450
.byte 0x0 @ 0x451

Script_branch_452: @ 452
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3d6
	SetVar 0x4000, 0x1
	Jump Script_branch_418
@ 472

.byte 0x2 @ 0x472
.byte 0x0 @ 0x473

Script_branch_474: @ 474
	Message 0xb
	Return2 0x1e, 0x800c
	FriendBT2
	FriendBT 0x7
	CloseMsgOnKeyPress
	Jump Script_branch_296
@ 48b

.byte 0x2 @ 0x48b
.byte 0x0 @ 0x48c

Function_48d: @ 48d
	ApplyMovement 0x2, Movement_5b0
	ApplyMovement 0x3, Movement_5c4
	WaitMovement
	Return
@ 4a1

Function_4a1: @ 4a1
	ApplyMovement 0x0, Movement_644
	ApplyMovement 0x1, Movement_644
	ApplyMovement 0x2, Movement_664
	ApplyMovement 0x3, Movement_664
	WaitMovement
	Return
@ 4c5

Function_4c5: @ 4c5
	CallBTowerFunctions 0x29, 0x0, 0x800c
	CopyVar 0x4022, 0x800c
	CallBTowerFunctions 0x29, 0x1, 0x800c
	CopyVar 0x4023, 0x800c
	ClearFlag 0x1ea
	ClearFlag 0x1eb
	AddPeople 0x5
	AddPeople 0x4
	ApplyMovement 0x5, Movement_5d8
	ApplyMovement 0x4, Movement_5ec
	WaitMovement
	Return
@ 505

Function_505: @ 505
	ApplyMovement 0x2, Movement_600
	ApplyMovement 0x3, Movement_600
	ApplyMovement 0x5, Movement_608
	ApplyMovement 0x4, Movement_608
	WaitMovement
	Return
@ 529

Function_529: @ 529
	ApplyMovement 0x5, Movement_610
	WaitMovement
	Return
@ 535

Function_535: @ 535
	ApplyMovement 0x4, Movement_610
	WaitMovement
	Return
@ 541

Function_541: @ 541
	ApplyMovement 0x5, Movement_618
	ApplyMovement 0x4, Movement_628
	WaitMovement
	SetFlag 0x1ea
	SetFlag 0x1eb
	RemovePeople 0x5
	RemovePeople 0x4
	Return
@ 565

Function_565: @ 565
	ApplyMovement 0x2, Movement_638
	ApplyMovement 0x3, Movement_638
	ApplyMovement 0x0, Movement_644
	ApplyMovement 0x1, Movement_644
	WaitMovement
	Return
@ 589

Function_589: @ 589
	ApplyMovement 0x2, Movement_64c
	ApplyMovement 0x3, Movement_64c
	ApplyMovement 0x0, Movement_654
	ApplyMovement 0x1, Movement_654
	WaitMovement
	Return
@ 5ad

.byte 0x0 @ 0x5ad
.byte 0x0 @ 0x5ae
.byte 0x0 @ 0x5af

Movement_5b0: @ 5b0
	WalkUpFast 0x1
	WalkLeftFast 0x3
	WalkUpFast 0x3
	SeeRight 0x1
	EndMovement 0x0
@ 5c4

Movement_5c4: @ 5c4
	WalkUpFast 0x1
	WalkLeftFast 0x4
	WalkUpFast 0x2
	SeeRight 0x1
	EndMovement 0x0
@ 5d8

Movement_5d8: @ 5d8
	WalkDownFast 0x1
	WalkRightFast 0x3
	WalkDownFast 0x3
	SeeLeft 0x1
	EndMovement 0x0
@ 5ec

Movement_5ec: @ 5ec
	WalkDownFast 0x1
	WalkRightFast 0x4
	WalkDownFast 0x2
	SeeLeft 0x1
	EndMovement 0x0
@ 600

Movement_600: @ 600
	WalkRightFast 0x1
	EndMovement 0x0
@ 608

Movement_608: @ 608
	WalkLeftFast 0x1
	EndMovement 0x0
@ 610

Movement_610: @ 610
	MoveLeft 0x1
	EndMovement 0x0
@ 618

Movement_618: @ 618
	WalkUpFast 0x3
	WalkLeftFast 0x2
	WalkUpFast 0x1
	EndMovement 0x0
@ 628

Movement_628: @ 628
	WalkUpFast 0x2
	WalkLeftFast 0x3
	WalkUpFast 0x1
	EndMovement 0x0
@ 638

Movement_638: @ 638
	WalkLeftFast 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 644

Movement_644: @ 644
	WalkRightFast 0x1
	EndMovement 0x0
@ 64c

Movement_64c: @ 64c
	SeeRight 0x1
	EndMovement 0x0
@ 654

Movement_654: @ 654
	SeeLeft 0x1
	WalkLeftFast 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 664

Movement_664: @ 664
	SeeLeft 0x1
	EndMovement 0x0
@ 66c

@ end_0x66c
