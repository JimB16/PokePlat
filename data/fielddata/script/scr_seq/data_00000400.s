.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetFlag 0x183
	SetFlag 0x184
	CheckFlag 0x97f
	CompareLastResultJump LESSER, Script_branch_29
	Call Function_2b
	End
@ 29

Script_branch_29: @ 29
	End
@ 2b

Function_2b: @ 2b
	CheckPokemart 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_8c
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_ed
	If 0x4000, 0x2
	CompareLastResultCall EQUAL, Script_branch_14e
	If 0x4000, 0x3
	CompareLastResultCall EQUAL, Script_branch_1af
	If 0x4000, 0x4
	CompareLastResultCall EQUAL, Script_branch_203
	If 0x4000, 0x5
	CompareLastResultCall EQUAL, Script_branch_264
	If 0x4000, 0x6
	CompareLastResultCall EQUAL, Script_branch_2c5
	Return
@ 8c

Script_branch_8c: @ 8c
	CheckEffectHm 0x4001
	If 0x4001, 0xa8
	CompareLastResultCall EQUAL, Script_branch_326
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_332
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_348
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_35e
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_36a
	If 0x4001, 0x1cb
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_38c
	Return
@ ed

Script_branch_ed: @ ed
	CheckEffectHm 0x4001
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_326
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_332
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_348
	If 0x4001, 0x1bb
	CompareLastResultCall EQUAL, Script_branch_35e
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_36a
	If 0x4001, 0x1ac
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x4001, 0x24
	CompareLastResultCall EQUAL, Script_branch_38c
	Return
@ 14e

Script_branch_14e: @ 14e
	CheckEffectHm 0x4001
	If 0x4001, 0x30
	CompareLastResultCall EQUAL, Script_branch_326
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_332
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_348
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_35e
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_36a
	If 0x4001, 0x1b3
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x4001, 0x24
	CompareLastResultCall EQUAL, Script_branch_38c
	Return
@ 1af

Script_branch_1af: @ 1af
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_332
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_348
	If 0x4001, 0x1bb
	CompareLastResultCall EQUAL, Script_branch_35e
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_36a
	If 0x4001, 0x1cb
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_38c
	Return
@ 203

Script_branch_203: @ 203
	CheckEffectHm 0x4001
	If 0x4001, 0x30
	CompareLastResultCall EQUAL, Script_branch_326
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_332
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_348
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_35e
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_36a
	If 0x4001, 0x1ac
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x4001, 0x97
	CompareLastResultCall EQUAL, Script_branch_38c
	Return
@ 264

Script_branch_264: @ 264
	CheckEffectHm 0x4001
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_326
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_332
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_348
	If 0x4001, 0x1bb
	CompareLastResultCall EQUAL, Script_branch_35e
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_36a
	If 0x4001, 0x1b3
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x4001, 0x97
	CompareLastResultCall EQUAL, Script_branch_38c
	Return
@ 2c5

Script_branch_2c5: @ 2c5
	CheckEffectHm 0x4001
	If 0x4001, 0xa8
	CompareLastResultCall EQUAL, Script_branch_326
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_332
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_348
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_35e
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_36a
	If 0x4001, 0x1cb
	CompareLastResultCall EQUAL, Script_branch_380
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_38c
	Return
@ 326

Script_branch_326: @ 326
	ClearFlag 0x183
	SetVar 0x402a, 0x23
	Return
@ 332

Script_branch_332: @ 332
	ClearFlag 0x183
	ClearFlag 0x184
	SetVar 0x402a, 0x16
	SetVar 0x402b, 0x17
	Return
@ 348

Script_branch_348: @ 348
	ClearFlag 0x183
	ClearFlag 0x184
	SetVar 0x402a, 0x16
	SetVar 0x402b, 0x17
	Return
@ 35e

Script_branch_35e: @ 35e
	ClearFlag 0x183
	SetVar 0x402a, 0x2b
	Return
@ 36a

Script_branch_36a: @ 36a
	ClearFlag 0x183
	ClearFlag 0x184
	SetVar 0x402a, 0x16
	SetVar 0x402b, 0x17
	Return
@ 380

Script_branch_380: @ 380
	ClearFlag 0x183
	SetVar 0x402a, 0x47
	Return
@ 38c

Script_branch_38c: @ 38c
	ClearFlag 0x183
	SetVar 0x402a, 0xa
	Return
@ 398

Script_2: @ 398
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8004, 0x0
	SetVar 0x8006, 0x0
	If 0x402a, 0x23
	CompareLastResultCall EQUAL, Script_branch_1331
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_133e
	If 0x402a, 0x2b
	CompareLastResultCall EQUAL, Script_branch_13a3
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_13b0
	If 0x402a, 0x47
	CompareLastResultCall EQUAL, Script_branch_13dd
	If 0x402a, 0xa
	CompareLastResultCall EQUAL, Script_branch_13ea
	If 0x8006, 0x1
	CompareLastResultJump EQUAL, Script_branch_6a8
	Jump Script_branch_486
@ 40d

.byte 0x2 @ 0x40d
.byte 0x0 @ 0x40e

Script_3: @ 40f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8004, 0x1
	SetVar 0x8006, 0x0
	If 0x402b, 0x23
	CompareLastResultCall EQUAL, Script_branch_1331
	If 0x402b, 0x17
	CompareLastResultCall EQUAL, Script_branch_1378
	If 0x402b, 0x2b
	CompareLastResultCall EQUAL, Script_branch_13a3
	If 0x402b, 0x16
	CompareLastResultCall EQUAL, Script_branch_13b0
	If 0x402b, 0x47
	CompareLastResultCall EQUAL, Script_branch_13dd
	If 0x402b, 0xa
	CompareLastResultCall EQUAL, Script_branch_13ea
	If 0x8006, 0x1
	CompareLastResultJump EQUAL, Script_branch_6a8
	Jump Script_branch_486
@ 484

.byte 0x2 @ 0x484
.byte 0x0 @ 0x485

Script_branch_486: @ 486
	SetVar 0x8000, 0x1
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_5b9
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_5b9
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_590
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_51a
	If 0x402a, 0x23
	CompareLastResultCall EQUAL, Script_branch_828
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_864
	If 0x402a, 0x2b
	CompareLastResultCall EQUAL, Script_branch_8f6
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_932
	If 0x402a, 0x47
	CompareLastResultCall EQUAL, Script_branch_986
	If 0x402a, 0xa
	CompareLastResultCall EQUAL, Script_branch_9c2
	Jump Script_branch_570
@ 518

.byte 0x2 @ 0x518
.byte 0x0 @ 0x519

Script_branch_51a: @ 51a
	If 0x402b, 0x23
	CompareLastResultCall EQUAL, Script_branch_828
	If 0x402b, 0x17
	CompareLastResultCall EQUAL, Script_branch_8a0
	If 0x402b, 0x2b
	CompareLastResultCall EQUAL, Script_branch_8f6
	If 0x402b, 0x16
	CompareLastResultCall EQUAL, Script_branch_95c
	If 0x402b, 0x47
	CompareLastResultCall EQUAL, Script_branch_986
	If 0x402b, 0xa
	CompareLastResultCall EQUAL, Script_branch_9c2
	Jump Script_branch_570
@ 56e

.byte 0x2 @ 0x56e
.byte 0x0 @ 0x56f

Script_branch_570: @ 570
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5ce
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_761
	End
@ 590

Script_branch_590: @ 590
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_5ab
	Call Function_100c
	Jump Script_branch_81a
@ 5a9

.byte 0x2 @ 0x5a9
.byte 0x0 @ 0x5aa

Script_branch_5ab: @ 5ab
	Call Function_1036
	Jump Script_branch_81a
@ 5b7

.byte 0x2 @ 0x5b7
.byte 0x0 @ 0x5b8

Script_branch_5b9: @ 5b9
	If 0x402a, 0x16
	CompareLastResultJump EQUAL, Script_branch_5c8
	Return
@ 5c8

Script_branch_5c8: @ 5c8
	StorePokePartyDefeated 0x8000
	Return
@ 5ce

Script_branch_5ce: @ 5ce
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_631
	If 0x402a, 0x23
	CompareLastResultCall EQUAL, Script_branch_9fe
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_a40
	If 0x402a, 0x2b
	CompareLastResultCall EQUAL, Script_branch_af6
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_b38
	If 0x402a, 0x47
	CompareLastResultCall EQUAL, Script_branch_ba4
	If 0x402a, 0xa
	CompareLastResultCall EQUAL, Script_branch_be6
	Jump Script_branch_687
@ 62f

.byte 0x2 @ 0x62f
.byte 0x0 @ 0x630

Script_branch_631: @ 631
	If 0x402b, 0x23
	CompareLastResultCall EQUAL, Script_branch_9fe
	If 0x402b, 0x17
	CompareLastResultCall EQUAL, Script_branch_a8e
	If 0x402b, 0x2b
	CompareLastResultCall EQUAL, Script_branch_af6
	If 0x402b, 0x16
	CompareLastResultCall EQUAL, Script_branch_b6e
	If 0x402b, 0x47
	CompareLastResultCall EQUAL, Script_branch_ba4
	If 0x402b, 0xa
	CompareLastResultCall EQUAL, Script_branch_be6
	Jump Script_branch_687
@ 685

.byte 0x2 @ 0x685
.byte 0x0 @ 0x686

Script_branch_687: @ 687
	CloseMsgOnKeyPress
	TrainerBattle 0x8005, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_822
	Jump Script_branch_6a8
@ 6a6

.byte 0x2 @ 0x6a6
.byte 0x0 @ 0x6a7

Script_branch_6a8: @ 6a8
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_70b
	If 0x402a, 0x23
	CompareLastResultCall EQUAL, Script_branch_dfe
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_e3e
	If 0x402a, 0x2b
	CompareLastResultCall EQUAL, Script_branch_ee8
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_f28
	If 0x402a, 0x47
	CompareLastResultCall EQUAL, Script_branch_f8c
	If 0x402a, 0xa
	CompareLastResultCall EQUAL, Script_branch_fcc
	Jump Script_branch_81a
@ 709

.byte 0x2 @ 0x709
.byte 0x0 @ 0x70a

Script_branch_70b: @ 70b
	If 0x402b, 0x23
	CompareLastResultCall EQUAL, Script_branch_dfe
	If 0x402b, 0x17
	CompareLastResultCall EQUAL, Script_branch_e86
	If 0x402b, 0x2b
	CompareLastResultCall EQUAL, Script_branch_ee8
	If 0x402b, 0x16
	CompareLastResultCall EQUAL, Script_branch_f5a
	If 0x402b, 0x47
	CompareLastResultCall EQUAL, Script_branch_f8c
	If 0x402b, 0xa
	CompareLastResultCall EQUAL, Script_branch_fcc
	Jump Script_branch_81a
@ 75f

.byte 0x2 @ 0x75f
.byte 0x0 @ 0x760

Script_branch_761: @ 761
	If 0x8004, 0x1
	CompareLastResultJump EQUAL, Script_branch_7c4
	If 0x402a, 0x23
	CompareLastResultCall EQUAL, Script_branch_c28
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_c64
	If 0x402a, 0x2b
	CompareLastResultCall EQUAL, Script_branch_cf6
	If 0x402a, 0x16
	CompareLastResultCall EQUAL, Script_branch_d32
	If 0x402a, 0x47
	CompareLastResultCall EQUAL, Script_branch_d86
	If 0x402a, 0xa
	CompareLastResultCall EQUAL, Script_branch_dc2
	Jump Script_branch_81a
@ 7c2

.byte 0x2 @ 0x7c2
.byte 0x0 @ 0x7c3

Script_branch_7c4: @ 7c4
	If 0x402b, 0x23
	CompareLastResultCall EQUAL, Script_branch_c28
	If 0x402b, 0x17
	CompareLastResultCall EQUAL, Script_branch_ca0
	If 0x402b, 0x2b
	CompareLastResultCall EQUAL, Script_branch_cf6
	If 0x402b, 0x16
	CompareLastResultCall EQUAL, Script_branch_d5c
	If 0x402b, 0x47
	CompareLastResultCall EQUAL, Script_branch_d86
	If 0x402b, 0xa
	CompareLastResultCall EQUAL, Script_branch_dc2
	Jump Script_branch_81a
@ 818

.byte 0x2 @ 0x818
.byte 0x0 @ 0x819

Script_branch_81a: @ 81a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 822

Script_branch_822: @ 822
	LostGoPc
	ReleaseAll
	End
@ 828

Script_branch_828: @ 828
	CheckEffectHm 0x4001
	If 0x4001, 0x30
	CompareLastResultCall EQUAL, Script_branch_855
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_85a
	If 0x4001, 0xa8
	CompareLastResultCall EQUAL, Script_branch_85f
	Return
@ 855

Script_branch_855: @ 855
	Message 0x10
	Return
@ 85a

Script_branch_85a: @ 85a
	Message 0x26
	Return
@ 85f

Script_branch_85f: @ 85f
	Message 0x40
	Return
@ 864

Script_branch_864: @ 864
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_891
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_896
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_89b
	Return
@ 891

Script_branch_891: @ 891
	Message 0x0
	Return
@ 896

Script_branch_896: @ 896
	Message 0x1e
	Return
@ 89b

Script_branch_89b: @ 89b
	Message 0x44
	Return
@ 8a0

Script_branch_8a0: @ 8a0
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_8e7
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_8ec
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_8f1
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_97c
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_981
	Return
@ 8e7

Script_branch_8e7: @ 8e7
	Message 0x4
	Return
@ 8ec

Script_branch_8ec: @ 8ec
	Message 0x22
	Return
@ 8f1

Script_branch_8f1: @ 8f1
	Message 0x48
	Return
@ 8f6

Script_branch_8f6: @ 8f6
	CheckEffectHm 0x4001
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_923
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_928
	If 0x4001, 0x1bb
	CompareLastResultCall EQUAL, Script_branch_92d
	Return
@ 923

Script_branch_923: @ 923
	Message 0x8
	Return
@ 928

Script_branch_928: @ 928
	Message 0x2a
	Return
@ 92d

Script_branch_92d: @ 92d
	Message 0x54
	Return
@ 932

Script_branch_932: @ 932
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_952
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_957
	Return
@ 952

Script_branch_952: @ 952
	Message 0x1a
	Return
@ 957

Script_branch_957: @ 957
	Message 0x38
	Return
@ 95c

Script_branch_95c: @ 95c
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_97c
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_981
	Return
@ 97c

Script_branch_97c: @ 97c
	Message 0x15
	Return
@ 981

Script_branch_981: @ 981
	Message 0x33
	Return
@ 986

Script_branch_986: @ 986
	CheckEffectHm 0x4001
	If 0x4001, 0x1ac
	CompareLastResultCall EQUAL, Script_branch_9b3
	If 0x4001, 0x1b3
	CompareLastResultCall EQUAL, Script_branch_9b8
	If 0x4001, 0x1cb
	CompareLastResultCall EQUAL, Script_branch_9bd
	Return
@ 9b3

Script_branch_9b3: @ 9b3
	Message 0x4c
	Return
@ 9b8

Script_branch_9b8: @ 9b8
	Message 0x50
	Return
@ 9bd

Script_branch_9bd: @ 9bd
	Message 0x58
	Return
@ 9c2

Script_branch_9c2: @ 9c2
	CheckEffectHm 0x4001
	If 0x4001, 0x24
	CompareLastResultCall EQUAL, Script_branch_9ef
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_9f4
	If 0x4001, 0x97
	CompareLastResultCall EQUAL, Script_branch_9f9
	Return
@ 9ef

Script_branch_9ef: @ 9ef
	Message 0xc
	Return
@ 9f4

Script_branch_9f4: @ 9f4
	Message 0x2e
	Return
@ 9f9

Script_branch_9f9: @ 9f9
	Message 0x3c
	Return
@ 9fe

Script_branch_9fe: @ 9fe
	Call Function_1060
	CheckEffectHm 0x4001
	If 0x4001, 0x30
	CompareLastResultCall EQUAL, Script_branch_a31
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_a36
	If 0x4001, 0xa8
	CompareLastResultCall EQUAL, Script_branch_a3b
	Return
@ a31

Script_branch_a31: @ a31
	Message 0x11
	Return
@ a36

Script_branch_a36: @ a36
	Message 0x27
	Return
@ a3b

Script_branch_a3b: @ a3b
	Message 0x41
	Return
@ a40

Script_branch_a40: @ a40
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_a6d
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_a78
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_a83
	Return
@ a6d

Script_branch_a6d: @ a6d
	Call Function_10c7
	Message 0x1
	Return
@ a78

Script_branch_a78: @ a78
	Call Function_10c7
	Message 0x1f
	Return
@ a83

Script_branch_a83: @ a83
	Call Function_10c7
	Message 0x45
	Return
@ a8e

Script_branch_a8e: @ a8e
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_ad5
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_ae0
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_aeb
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_b8e
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_b99
	Return
@ ad5

Script_branch_ad5: @ ad5
	Call Function_112e
	Message 0x5
	Return
@ ae0

Script_branch_ae0: @ ae0
	Call Function_112e
	Message 0x23
	Return
@ aeb

Script_branch_aeb: @ aeb
	Call Function_112e
	Message 0x49
	Return
@ af6

Script_branch_af6: @ af6
	Call Function_1195
	CheckEffectHm 0x4001
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_b29
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_b2e
	If 0x4001, 0x1bb
	CompareLastResultCall EQUAL, Script_branch_b33
	Return
@ b29

Script_branch_b29: @ b29
	Message 0x9
	Return
@ b2e

Script_branch_b2e: @ b2e
	Message 0x2b
	Return
@ b33

Script_branch_b33: @ b33
	Message 0x55
	Return
@ b38

Script_branch_b38: @ b38
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_b58
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_b63
	Return
@ b58

Script_branch_b58: @ b58
	Call Function_11fc
	Message 0x1b
	Return
@ b63

Script_branch_b63: @ b63
	Call Function_11fc
	Message 0x39
	Return
@ b6e

Script_branch_b6e: @ b6e
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_b8e
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_b99
	Return
@ b8e

Script_branch_b8e: @ b8e
	Call Function_11fc
	Message 0x16
	Return
@ b99

Script_branch_b99: @ b99
	Call Function_11fc
	Message 0x34
	Return
@ ba4

Script_branch_ba4: @ ba4
	Call Function_1263
	CheckEffectHm 0x4001
	If 0x4001, 0x1ac
	CompareLastResultCall EQUAL, Script_branch_bd7
	If 0x4001, 0x1b3
	CompareLastResultCall EQUAL, Script_branch_bdc
	If 0x4001, 0x1cb
	CompareLastResultCall EQUAL, Script_branch_be1
	Return
@ bd7

Script_branch_bd7: @ bd7
	Message 0x4d
	Return
@ bdc

Script_branch_bdc: @ bdc
	Message 0x51
	Return
@ be1

Script_branch_be1: @ be1
	Message 0x59
	Return
@ be6

Script_branch_be6: @ be6
	Call Function_12ca
	CheckEffectHm 0x4001
	If 0x4001, 0x24
	CompareLastResultCall EQUAL, Script_branch_c19
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_c1e
	If 0x4001, 0x97
	CompareLastResultCall EQUAL, Script_branch_c23
	Return
@ c19

Script_branch_c19: @ c19
	Message 0xd
	Return
@ c1e

Script_branch_c1e: @ c1e
	Message 0x2f
	Return
@ c23

Script_branch_c23: @ c23
	Message 0x3d
	Return
@ c28

Script_branch_c28: @ c28
	CheckEffectHm 0x4001
	If 0x4001, 0x30
	CompareLastResultCall EQUAL, Script_branch_c55
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_c5a
	If 0x4001, 0xa8
	CompareLastResultCall EQUAL, Script_branch_c5f
	Return
@ c55

Script_branch_c55: @ c55
	Message 0x12
	Return
@ c5a

Script_branch_c5a: @ c5a
	Message 0x28
	Return
@ c5f

Script_branch_c5f: @ c5f
	Message 0x42
	Return
@ c64

Script_branch_c64: @ c64
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_c91
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_c96
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_c9b
	Return
@ c91

Script_branch_c91: @ c91
	Message 0x2
	Return
@ c96

Script_branch_c96: @ c96
	Message 0x20
	Return
@ c9b

Script_branch_c9b: @ c9b
	Message 0x46
	Return
@ ca0

Script_branch_ca0: @ ca0
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_ce7
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_cec
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_cf1
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_d7c
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_d81
	Return
@ ce7

Script_branch_ce7: @ ce7
	Message 0x6
	Return
@ cec

Script_branch_cec: @ cec
	Message 0x24
	Return
@ cf1

Script_branch_cf1: @ cf1
	Message 0x4a
	Return
@ cf6

Script_branch_cf6: @ cf6
	CheckEffectHm 0x4001
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_d23
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_d28
	If 0x4001, 0x1bb
	CompareLastResultCall EQUAL, Script_branch_d2d
	Return
@ d23

Script_branch_d23: @ d23
	Message 0xa
	Return
@ d28

Script_branch_d28: @ d28
	Message 0x2c
	Return
@ d2d

Script_branch_d2d: @ d2d
	Message 0x56
	Return
@ d32

Script_branch_d32: @ d32
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_d52
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_d57
	Return
@ d52

Script_branch_d52: @ d52
	Message 0x1c
	Return
@ d57

Script_branch_d57: @ d57
	Message 0x3a
	Return
@ d5c

Script_branch_d5c: @ d5c
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_d7c
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_d81
	Return
@ d7c

Script_branch_d7c: @ d7c
	Message 0x17
	Return
@ d81

Script_branch_d81: @ d81
	Message 0x35
	Return
@ d86

Script_branch_d86: @ d86
	CheckEffectHm 0x4001
	If 0x4001, 0x1ac
	CompareLastResultCall EQUAL, Script_branch_db3
	If 0x4001, 0x1b3
	CompareLastResultCall EQUAL, Script_branch_db8
	If 0x4001, 0x1cb
	CompareLastResultCall EQUAL, Script_branch_dbd
	Return
@ db3

Script_branch_db3: @ db3
	Message 0x4e
	Return
@ db8

Script_branch_db8: @ db8
	Message 0x52
	Return
@ dbd

Script_branch_dbd: @ dbd
	Message 0x5a
	Return
@ dc2

Script_branch_dc2: @ dc2
	CheckEffectHm 0x4001
	If 0x4001, 0x24
	CompareLastResultCall EQUAL, Script_branch_def
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_df4
	If 0x4001, 0x97
	CompareLastResultCall EQUAL, Script_branch_df9
	Return
@ def

Script_branch_def: @ def
	Message 0xe
	Return
@ df4

Script_branch_df4: @ df4
	Message 0x30
	Return
@ df9

Script_branch_df9: @ df9
	Message 0x3e
	Return
@ dfe

Script_branch_dfe: @ dfe
	SetFlag 0xabc
	CheckEffectHm 0x4001
	If 0x4001, 0x30
	CompareLastResultCall EQUAL, Script_branch_e2f
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_e34
	If 0x4001, 0xa8
	CompareLastResultCall EQUAL, Script_branch_e39
	Return
@ e2f

Script_branch_e2f: @ e2f
	Message 0x13
	Return
@ e34

Script_branch_e34: @ e34
	Message 0x29
	Return
@ e39

Script_branch_e39: @ e39
	Message 0x43
	Return
@ e3e

Script_branch_e3e: @ e3e
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_e6b
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_e74
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_e7d
	Return
@ e6b

Script_branch_e6b: @ e6b
	SetFlag 0xabd
	Message 0x3
	Return
@ e74

Script_branch_e74: @ e74
	SetFlag 0xabd
	Message 0x21
	Return
@ e7d

Script_branch_e7d: @ e7d
	SetFlag 0xabd
	Message 0x47
	Return
@ e86

Script_branch_e86: @ e86
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_ecd
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_ed6
	If 0x4001, 0xbd
	CompareLastResultCall EQUAL, Script_branch_edf
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_f7a
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_f83
	Return
@ ecd

Script_branch_ecd: @ ecd
	SetFlag 0xabe
	Message 0x7
	Return
@ ed6

Script_branch_ed6: @ ed6
	SetFlag 0xabe
	Message 0x25
	Return
@ edf

Script_branch_edf: @ edf
	SetFlag 0xabe
	Message 0x4b
	Return
@ ee8

Script_branch_ee8: @ ee8
	SetFlag 0xabf
	CheckEffectHm 0x4001
	If 0x4001, 0x65
	CompareLastResultCall EQUAL, Script_branch_f19
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_f1e
	If 0x4001, 0x1bb
	CompareLastResultCall EQUAL, Script_branch_f23
	Return
@ f19

Script_branch_f19: @ f19
	Message 0xb
	Return
@ f1e

Script_branch_f1e: @ f1e
	Message 0x2d
	Return
@ f23

Script_branch_f23: @ f23
	Message 0x57
	Return
@ f28

Script_branch_f28: @ f28
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_f48
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_f51
	Return
@ f48

Script_branch_f48: @ f48
	SetFlag 0xac0
	Message 0x1d
	Return
@ f51

Script_branch_f51: @ f51
	SetFlag 0xac0
	Message 0x3b
	Return
@ f5a

Script_branch_f5a: @ f5a
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_f7a
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_f83
	Return
@ f7a

Script_branch_f7a: @ f7a
	SetFlag 0xac0
	Message 0x18
	Return
@ f83

Script_branch_f83: @ f83
	SetFlag 0xac0
	Message 0x36
	Return
@ f8c

Script_branch_f8c: @ f8c
	SetFlag 0xac1
	CheckEffectHm 0x4001
	If 0x4001, 0x1ac
	CompareLastResultCall EQUAL, Script_branch_fbd
	If 0x4001, 0x1b3
	CompareLastResultCall EQUAL, Script_branch_fc2
	If 0x4001, 0x1cb
	CompareLastResultCall EQUAL, Script_branch_fc7
	Return
@ fbd

Script_branch_fbd: @ fbd
	Message 0x4f
	Return
@ fc2

Script_branch_fc2: @ fc2
	Message 0x53
	Return
@ fc7

Script_branch_fc7: @ fc7
	Message 0x5b
	Return
@ fcc

Script_branch_fcc: @ fcc
	SetFlag 0xac2
	CheckEffectHm 0x4001
	If 0x4001, 0x24
	CompareLastResultCall EQUAL, Script_branch_ffd
	If 0x4001, 0x7b
	CompareLastResultCall EQUAL, Script_branch_1002
	If 0x4001, 0x97
	CompareLastResultCall EQUAL, Script_branch_1007
	Return
@ ffd

Script_branch_ffd: @ ffd
	Message 0xf
	Return
@ 1002

Script_branch_1002: @ 1002
	Message 0x31
	Return
@ 1007

Script_branch_1007: @ 1007
	Message 0x3f
	Return
@ 100c

Function_100c: @ 100c
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_102c
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_1031
	Return
@ 102c

Script_branch_102c: @ 102c
	Message 0x19
	Return
@ 1031

Script_branch_1031: @ 1031
	Message 0x37
	Return
@ 1036

Function_1036: @ 1036
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultCall EQUAL, Script_branch_1056
	If 0x4001, 0x86
	CompareLastResultCall EQUAL, Script_branch_105b
	Return
@ 1056

Script_branch_1056: @ 1056
	Message 0x14
	Return
@ 105b

Script_branch_105b: @ 105b
	Message 0x32
	Return
@ 1060

Function_1060: @ 1060
	SetVar 0x8005, 0x173
	CheckFlag 0x97f
	CompareLastResultCall EQUAL, Script_branch_109f
	CheckFlag 0x980
	CompareLastResultCall EQUAL, Script_branch_10a7
	CheckFlag 0x981
	CompareLastResultCall EQUAL, Script_branch_10af
	CheckFlag 0x982
	CompareLastResultCall EQUAL, Script_branch_10b7
	CheckFlag 0x983
	CompareLastResultCall EQUAL, Script_branch_10bf
	Return
@ 109f

Script_branch_109f: @ 109f
	SetVar 0x8005, 0x370
	Return
@ 10a7

Script_branch_10a7: @ 10a7
	SetVar 0x8005, 0x371
	Return
@ 10af

Script_branch_10af: @ 10af
	SetVar 0x8005, 0x372
	Return
@ 10b7

Script_branch_10b7: @ 10b7
	SetVar 0x8005, 0x38c
	Return
@ 10bf

Script_branch_10bf: @ 10bf
	SetVar 0x8005, 0x394
	Return
@ 10c7

Function_10c7: @ 10c7
	SetVar 0x8005, 0x172
	CheckFlag 0x97f
	CompareLastResultCall EQUAL, Script_branch_1106
	CheckFlag 0x980
	CompareLastResultCall EQUAL, Script_branch_110e
	CheckFlag 0x981
	CompareLastResultCall EQUAL, Script_branch_1116
	CheckFlag 0x982
	CompareLastResultCall EQUAL, Script_branch_111e
	CheckFlag 0x983
	CompareLastResultCall EQUAL, Script_branch_1126
	Return
@ 1106

Script_branch_1106: @ 1106
	SetVar 0x8005, 0x37e
	Return
@ 110e

Script_branch_110e: @ 110e
	SetVar 0x8005, 0x37f
	Return
@ 1116

Script_branch_1116: @ 1116
	SetVar 0x8005, 0x380
	Return
@ 111e

Script_branch_111e: @ 111e
	SetVar 0x8005, 0x390
	Return
@ 1126

Script_branch_1126: @ 1126
	SetVar 0x8005, 0x398
	Return
@ 112e

Function_112e: @ 112e
	SetVar 0x8005, 0x171
	CheckFlag 0x97f
	CompareLastResultCall EQUAL, Script_branch_116d
	CheckFlag 0x980
	CompareLastResultCall EQUAL, Script_branch_1175
	CheckFlag 0x981
	CompareLastResultCall EQUAL, Script_branch_117d
	CheckFlag 0x982
	CompareLastResultCall EQUAL, Script_branch_1185
	CheckFlag 0x983
	CompareLastResultCall EQUAL, Script_branch_118d
	Return
@ 116d

Script_branch_116d: @ 116d
	SetVar 0x8005, 0x36a
	Return
@ 1175

Script_branch_1175: @ 1175
	SetVar 0x8005, 0x36b
	Return
@ 117d

Script_branch_117d: @ 117d
	SetVar 0x8005, 0x36c
	Return
@ 1185

Script_branch_1185: @ 1185
	SetVar 0x8005, 0x38a
	Return
@ 118d

Script_branch_118d: @ 118d
	SetVar 0x8005, 0x392
	Return
@ 1195

Function_1195: @ 1195
	SetVar 0x8005, 0x1cc
	CheckFlag 0x97f
	CompareLastResultCall EQUAL, Script_branch_11d4
	CheckFlag 0x980
	CompareLastResultCall EQUAL, Script_branch_11dc
	CheckFlag 0x981
	CompareLastResultCall EQUAL, Script_branch_11e4
	CheckFlag 0x982
	CompareLastResultCall EQUAL, Script_branch_11ec
	CheckFlag 0x983
	CompareLastResultCall EQUAL, Script_branch_11f4
	Return
@ 11d4

Script_branch_11d4: @ 11d4
	SetVar 0x8005, 0x376
	Return
@ 11dc

Script_branch_11dc: @ 11dc
	SetVar 0x8005, 0x377
	Return
@ 11e4

Script_branch_11e4: @ 11e4
	SetVar 0x8005, 0x378
	Return
@ 11ec

Script_branch_11ec: @ 11ec
	SetVar 0x8005, 0x38e
	Return
@ 11f4

Script_branch_11f4: @ 11f4
	SetVar 0x8005, 0x396
	Return
@ 11fc

Function_11fc: @ 11fc
	SetVar 0x8005, 0x170
	CheckFlag 0x97f
	CompareLastResultCall EQUAL, Script_branch_123b
	CheckFlag 0x980
	CompareLastResultCall EQUAL, Script_branch_1243
	CheckFlag 0x981
	CompareLastResultCall EQUAL, Script_branch_124b
	CheckFlag 0x982
	CompareLastResultCall EQUAL, Script_branch_1253
	CheckFlag 0x983
	CompareLastResultCall EQUAL, Script_branch_125b
	Return
@ 123b

Script_branch_123b: @ 123b
	SetVar 0x8005, 0x373
	Return
@ 1243

Script_branch_1243: @ 1243
	SetVar 0x8005, 0x374
	Return
@ 124b

Script_branch_124b: @ 124b
	SetVar 0x8005, 0x375
	Return
@ 1253

Script_branch_1253: @ 1253
	SetVar 0x8005, 0x38d
	Return
@ 125b

Script_branch_125b: @ 125b
	SetVar 0x8005, 0x395
	Return
@ 1263

Function_1263: @ 1263
	SetVar 0x8005, 0x1d1
	CheckFlag 0x97f
	CompareLastResultCall EQUAL, Script_branch_12a2
	CheckFlag 0x980
	CompareLastResultCall EQUAL, Script_branch_12aa
	CheckFlag 0x981
	CompareLastResultCall EQUAL, Script_branch_12b2
	CheckFlag 0x982
	CompareLastResultCall EQUAL, Script_branch_12ba
	CheckFlag 0x983
	CompareLastResultCall EQUAL, Script_branch_12c2
	Return
@ 12a2

Script_branch_12a2: @ 12a2
	SetVar 0x8005, 0x379
	Return
@ 12aa

Script_branch_12aa: @ 12aa
	SetVar 0x8005, 0x37a
	Return
@ 12b2

Script_branch_12b2: @ 12b2
	SetVar 0x8005, 0x37b
	Return
@ 12ba

Script_branch_12ba: @ 12ba
	SetVar 0x8005, 0x38f
	Return
@ 12c2

Script_branch_12c2: @ 12c2
	SetVar 0x8005, 0x397
	Return
@ 12ca

Function_12ca: @ 12ca
	SetVar 0x8005, 0x1af
	CheckFlag 0x97f
	CompareLastResultCall EQUAL, Script_branch_1309
	CheckFlag 0x980
	CompareLastResultCall EQUAL, Script_branch_1311
	CheckFlag 0x981
	CompareLastResultCall EQUAL, Script_branch_1319
	CheckFlag 0x982
	CompareLastResultCall EQUAL, Script_branch_1321
	CheckFlag 0x983
	CompareLastResultCall EQUAL, Script_branch_1329
	Return
@ 1309

Script_branch_1309: @ 1309
	SetVar 0x8005, 0x36d
	Return
@ 1311

Script_branch_1311: @ 1311
	SetVar 0x8005, 0x36e
	Return
@ 1319

Script_branch_1319: @ 1319
	SetVar 0x8005, 0x36f
	Return
@ 1321

Script_branch_1321: @ 1321
	SetVar 0x8005, 0x38b
	Return
@ 1329

Script_branch_1329: @ 1329
	SetVar 0x8005, 0x393
	Return
@ 1331

Script_branch_1331: @ 1331
	CheckFlag 0xabc
	CompareLastResultJump EQUAL, Script_branch_13f7
	Return
@ 133e

Script_branch_133e: @ 133e
	CheckEffectHm 0x4001
	If 0x4001, 0x6
	CompareLastResultJump EQUAL, Script_branch_136b
	If 0x4001, 0x65
	CompareLastResultJump EQUAL, Script_branch_136b
	If 0x4001, 0xbd
	CompareLastResultJump EQUAL, Script_branch_136b
	Return
@ 136b

Script_branch_136b: @ 136b
	CheckFlag 0xabd
	CompareLastResultJump EQUAL, Script_branch_13f7
	Return
@ 1378

Script_branch_1378: @ 1378
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultJump EQUAL, Script_branch_13b0
	If 0x4001, 0x86
	CompareLastResultJump EQUAL, Script_branch_13b0
	CheckFlag 0xabe
	CompareLastResultJump EQUAL, Script_branch_13f7
	Return
@ 13a3

Script_branch_13a3: @ 13a3
	CheckFlag 0xabf
	CompareLastResultJump EQUAL, Script_branch_13f7
	Return
@ 13b0

Script_branch_13b0: @ 13b0
	CheckEffectHm 0x4001
	If 0x4001, 0x45
	CompareLastResultJump EQUAL, Script_branch_13d0
	If 0x4001, 0x86
	CompareLastResultJump EQUAL, Script_branch_13d0
	Return
@ 13d0

Script_branch_13d0: @ 13d0
	CheckFlag 0xac0
	CompareLastResultJump EQUAL, Script_branch_13f7
	Return
@ 13dd

Script_branch_13dd: @ 13dd
	CheckFlag 0xac1
	CompareLastResultJump EQUAL, Script_branch_13f7
	Return
@ 13ea

Script_branch_13ea: @ 13ea
	CheckFlag 0xac2
	CompareLastResultJump EQUAL, Script_branch_13f7
	Return
@ 13f7

Script_branch_13f7: @ 13f7
	SetVar 0x8006, 0x1
	Return
@ 13ff

.byte 0x0 @ 0x13ff

@ end_0x1400
