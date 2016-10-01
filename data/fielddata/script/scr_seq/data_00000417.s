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
	script Script_17
	script Script_18
	script Script_19
	script Script_20
	script Script_21
	.hword 0xfd13
@ 56

.byte 0x2 @ 0x56
.byte 0x0 @ 0x57

Script_2: @ 58
	SetFlag 0x9ee
	CheckTime2 0x4000
	If 0x4000, 0x9
	CompareLastResultJump LESSER, Script_branch_87
	If 0x4000, 0x17
	CompareLastResultJump 0x4, Script_branch_87
	CheckFlag 0xaab
	CompareLastResultJump LESSER, Script_branch_b3
	End
@ 87

Script_branch_87: @ 87
	SetFlag 0x244
	SetFlag 0x245
	SetFlag 0x246
	SetFlag 0x247
	SetFlag 0x248
	SetFlag 0x249
	SetFlag 0x24a
	SetFlag 0x24b
	SetFlag 0x24c
	SetVar 0x4104, 0x1
	End
@ b3

Script_branch_b3: @ b3
	SetFlag 0x244
	SetFlag 0x245
	SetFlag 0x246
	SetFlag 0x247
	SetFlag 0x248
	SetFlag 0x249
	SetFlag 0x24a
	SetFlag 0x24b
	SetFlag 0x24c
	Cmd_24 0x218
	Cmd_24 0x227
	Cmd_24 0x221
	Cmd_24 0x222
	Cmd_24 0x21e
	Cmd_24 0x21f
	Cmd_24 0x21b
	Cmd_24 0x217
	Cmd_24 0x224
	Cmd_24 0x21c
	Cmd_24 0x228
	Cmd_24 0x220
	Cmd_24 0x21a
	Cmd_24 0x223
	Cmd_24 0x21d
	Cmd_24 0x226
	Cmd_24 0x225
	Cmd_24 0x219
	SetVar 0x4104, 0x0
	CheckIdPlayer 0x4001, 0x1
	SetVar 0x4000, 0x5
	SetVar 0x400a, 0x2710
Script_branch_137: @ 137
	RandomTextStored 0x4001, 0x9
	If 0x4001, 0x0
	CompareLastResultCall EQUAL, Script_branch_1d8
	If 0x4001, 0x1
	CompareLastResultCall EQUAL, Script_branch_1f5
	If 0x4001, 0x2
	CompareLastResultCall EQUAL, Script_branch_212
	If 0x4001, 0x3
	CompareLastResultCall EQUAL, Script_branch_22f
	If 0x4001, 0x4
	CompareLastResultCall EQUAL, Script_branch_24c
	If 0x4001, 0x5
	CompareLastResultCall EQUAL, Script_branch_269
	If 0x4001, 0x6
	CompareLastResultCall EQUAL, Script_branch_286
	If 0x4001, 0x7
	CompareLastResultCall EQUAL, Script_branch_2a3
	If 0x4001, 0x8
	CompareLastResultCall EQUAL, Script_branch_2c0
	ScriptCmd_SubValue 0x400a, 0x1
	If 0x400a, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d2
	If 0x4000, 0x0
	CompareLastResultJump 0x5, Script_branch_137
Script_branch_1d2: @ 1d2
	SetFlag 0xaab
	End
@ 1d8

Script_branch_1d8: @ 1d8
	CheckFlag 0x244
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x244
	RandomTextStored 0x40fb, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 1f5

Script_branch_1f5: @ 1f5
	CheckFlag 0x245
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x245
	RandomTextStored 0x40fc, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 212

Script_branch_212: @ 212
	CheckFlag 0x246
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x246
	RandomTextStored 0x40fd, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 22f

Script_branch_22f: @ 22f
	CheckFlag 0x247
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x247
	RandomTextStored 0x40fe, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 24c

Script_branch_24c: @ 24c
	CheckFlag 0x248
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x248
	RandomTextStored 0x40ff, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 269

Script_branch_269: @ 269
	CheckFlag 0x249
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x249
	RandomTextStored 0x4100, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 286

Script_branch_286: @ 286
	CheckFlag 0x24a
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x24a
	RandomTextStored 0x4101, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 2a3

Script_branch_2a3: @ 2a3
	CheckFlag 0x24b
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x24b
	RandomTextStored 0x4102, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 2c0

Script_branch_2c0: @ 2c0
	CheckFlag 0x24c
	CompareLastResultJump LESSER, Script_branch_2dd
	ClearFlag 0x24c
	RandomTextStored 0x4103, 0x3
	ScriptCmd_SubValue 0x4000, 0x1
	Return
@ 2dd

Script_branch_2dd: @ 2dd
	Return
@ 2df

Script_3: @ 2df
	LockAll
	ApplyMovement 0xff, Movement_212c
	WaitMovement
	Return2 0x14, 0x800c
	Message 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x150, 0x0, 0x2c2, 0x317, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 31e

Script_1: @ 31e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 331

Script_4: @ 331
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x218
	ClearTrainerId 0x218
	CompareLastResultJump EQUAL, Script_branch_46c
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_4bc
	CopyVar 0x8008, 0x40fb
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_38a
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_3a9
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_3c8
	ReleaseAll
	End
@ 38a

Script_branch_38a: @ 38a
	Message 0x4
	FacePlayer
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e7
	Jump Script_branch_460
Script_branch_3a9: @ 3a9
	Message 0xc
	FacePlayer
	Message 0xd
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e7
	Jump Script_branch_460
Script_branch_3c8: @ 3c8
	Message 0x14
	FacePlayer
	Message 0x15
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e7
	Jump Script_branch_460
Script_branch_3e7: @ 3e7
	CloseMsgOnKeyPress
	TrainerBattle 0x218, 0x227
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x218
	SetTrainerId 0x227
	Call Function_4cf
	CopyVar 0x8008, 0x40fb
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_43f
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_44a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_455
	ReleaseAll
	End
@ 43f

Script_branch_43f: @ 43f
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44a

Script_branch_44a: @ 44a
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 455

Script_branch_455: @ 455
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 460

Script_branch_460: @ 460
	CloseMsgOnKeyPress
	Call Function_4cf
	ReleaseAll
	End
@ 46c

Script_branch_46c: @ 46c
	CopyVar 0x8008, 0x40fb
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_49b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_4a6
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_4b1
	End
@ 49b

Script_branch_49b: @ 49b
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4a6

Script_branch_4a6: @ 4a6
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4b1

Script_branch_4b1: @ 4b1
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4bc

Script_branch_4bc: @ 4bc
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	Call Function_4cf
	ReleaseAll
	End
@ 4cf

Function_4cf: @ 4cf
	ApplyMovement 0x6, Movement_212c
	WaitMovement
	Return
@ 4db

Script_5: @ 4db
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x227
	ClearTrainerId 0x227
	CompareLastResultJump EQUAL, Script_branch_616
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_666
	CopyVar 0x8008, 0x40fb
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_534
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_553
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_572
	ReleaseAll
	End
@ 534

Script_branch_534: @ 534
	Message 0x8
	FacePlayer
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_591
	Jump Script_branch_60a
Script_branch_553: @ 553
	Message 0x10
	FacePlayer
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_591
	Jump Script_branch_60a
Script_branch_572: @ 572
	Message 0x18
	FacePlayer
	Message 0x19
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_591
	Jump Script_branch_60a
Script_branch_591: @ 591
	CloseMsgOnKeyPress
	TrainerBattle 0x218, 0x227
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x218
	SetTrainerId 0x227
	Call Function_679
	CopyVar 0x8008, 0x40fb
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_5e9
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_5f4
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_5ff
	ReleaseAll
	End
@ 5e9

Script_branch_5e9: @ 5e9
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5f4

Script_branch_5f4: @ 5f4
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5ff

Script_branch_5ff: @ 5ff
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 60a

Script_branch_60a: @ 60a
	CloseMsgOnKeyPress
	Call Function_679
	ReleaseAll
	End
@ 616

Script_branch_616: @ 616
	CopyVar 0x8008, 0x40fb
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_645
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_650
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_65b
	End
@ 645

Script_branch_645: @ 645
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 650

Script_branch_650: @ 650
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 65b

Script_branch_65b: @ 65b
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 666

Script_branch_666: @ 666
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	Call Function_679
	ReleaseAll
	End
@ 679

Function_679: @ 679
	ApplyMovement 0x9, Movement_2134
	WaitMovement
	Return
@ 685

Script_6: @ 685
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x221
	ClearTrainerId 0x221
	CompareLastResultJump EQUAL, Script_branch_7c0
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_810
	CopyVar 0x8008, 0x40fc
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_6de
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_6fd
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_71c
	ReleaseAll
	End
@ 6de

Script_branch_6de: @ 6de
	Message 0x1e
	FacePlayer
	Message 0x1f
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_73b
	Jump Script_branch_7b4
Script_branch_6fd: @ 6fd
	Message 0x26
	FacePlayer
	Message 0x27
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_73b
	Jump Script_branch_7b4
Script_branch_71c: @ 71c
	Message 0x2e
	FacePlayer
	Message 0x2f
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_73b
	Jump Script_branch_7b4
Script_branch_73b: @ 73b
	CloseMsgOnKeyPress
	TrainerBattle 0x221, 0x222
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x221
	SetTrainerId 0x222
	Call Function_823
	CopyVar 0x8008, 0x40fc
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_793
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_79e
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_7a9
	ReleaseAll
	End
@ 793

Script_branch_793: @ 793
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 79e

Script_branch_79e: @ 79e
	Message 0x29
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7a9

Script_branch_7a9: @ 7a9
	Message 0x31
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7b4

Script_branch_7b4: @ 7b4
	CloseMsgOnKeyPress
	Call Function_823
	ReleaseAll
	End
@ 7c0

Script_branch_7c0: @ 7c0
	CopyVar 0x8008, 0x40fc
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_7ef
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_7fa
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_805
	End
@ 7ef

Script_branch_7ef: @ 7ef
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7fa

Script_branch_7fa: @ 7fa
	Message 0x29
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 805

Script_branch_805: @ 805
	Message 0x31
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 810

Script_branch_810: @ 810
	FacePlayer
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	Call Function_823
	ReleaseAll
	End
@ 823

Function_823: @ 823
	ApplyMovement 0x2, Movement_212c
	WaitMovement
	Return
@ 82f

Script_7: @ 82f
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x222
	ClearTrainerId 0x222
	CompareLastResultJump EQUAL, Script_branch_96a
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_9ba
	CopyVar 0x8008, 0x40fc
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_888
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_8a7
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_8c6
	ReleaseAll
	End
@ 888

Script_branch_888: @ 888
	Message 0x22
	FacePlayer
	Message 0x23
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_8e5
	Jump Script_branch_95e
Script_branch_8a7: @ 8a7
	Message 0x2a
	FacePlayer
	Message 0x2b
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_8e5
	Jump Script_branch_95e
Script_branch_8c6: @ 8c6
	Message 0x32
	FacePlayer
	Message 0x33
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_8e5
	Jump Script_branch_95e
Script_branch_8e5: @ 8e5
	CloseMsgOnKeyPress
	TrainerBattle 0x221, 0x222
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x221
	SetTrainerId 0x222
	Call Function_9cd
	CopyVar 0x8008, 0x40fc
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_93d
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_948
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_953
	ReleaseAll
	End
@ 93d

Script_branch_93d: @ 93d
	Message 0x25
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 948

Script_branch_948: @ 948
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 953

Script_branch_953: @ 953
	Message 0x35
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 95e

Script_branch_95e: @ 95e
	CloseMsgOnKeyPress
	Call Function_9cd
	ReleaseAll
	End
@ 96a

Script_branch_96a: @ 96a
	CopyVar 0x8008, 0x40fc
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_999
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_9a4
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_9af
	End
@ 999

Script_branch_999: @ 999
	Message 0x25
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9a4

Script_branch_9a4: @ 9a4
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9af

Script_branch_9af: @ 9af
	Message 0x35
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9ba

Script_branch_9ba: @ 9ba
	FacePlayer
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	Call Function_9cd
	ReleaseAll
	End
@ 9cd

Function_9cd: @ 9cd
	ApplyMovement 0x3, Movement_2134
	WaitMovement
	Return
@ 9d9

Script_8: @ 9d9
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x21e
	ClearTrainerId 0x21e
	CompareLastResultJump EQUAL, Script_branch_b14
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b64
	CopyVar 0x8008, 0x40fd
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_a32
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_a51
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_a70
	ReleaseAll
	End
@ a32

Script_branch_a32: @ a32
	Message 0x38
	FacePlayer
	Message 0x39
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_a8f
	Jump Script_branch_b08
Script_branch_a51: @ a51
	Message 0x40
	FacePlayer
	Message 0x41
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_a8f
	Jump Script_branch_b08
Script_branch_a70: @ a70
	Message 0x48
	FacePlayer
	Message 0x49
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_a8f
	Jump Script_branch_b08
Script_branch_a8f: @ a8f
	CloseMsgOnKeyPress
	TrainerBattle 0x21e, 0x21f
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21e
	SetTrainerId 0x21f
	Call Function_b77
	CopyVar 0x8008, 0x40fd
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_ae7
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_af2
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_afd
	ReleaseAll
	End
@ ae7

Script_branch_ae7: @ ae7
	Message 0x3b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ af2

Script_branch_af2: @ af2
	Message 0x43
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ afd

Script_branch_afd: @ afd
	Message 0x4b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b08

Script_branch_b08: @ b08
	CloseMsgOnKeyPress
	Call Function_b77
	ReleaseAll
	End
@ b14

Script_branch_b14: @ b14
	CopyVar 0x8008, 0x40fd
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_b43
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_b4e
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_b59
	End
@ b43

Script_branch_b43: @ b43
	Message 0x3b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b4e

Script_branch_b4e: @ b4e
	Message 0x43
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b59

Script_branch_b59: @ b59
	Message 0x4b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b64

Script_branch_b64: @ b64
	FacePlayer
	Message 0x36
	WaitButton
	CloseMsgOnKeyPress
	Call Function_b77
	ReleaseAll
	End
@ b77

Function_b77: @ b77
	ApplyMovement 0x0, Movement_212c
	WaitMovement
	Return
@ b83

Script_9: @ b83
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x21f
	ClearTrainerId 0x21f
	CompareLastResultJump EQUAL, Script_branch_cbe
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_d0e
	CopyVar 0x8008, 0x40fd
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_bdc
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_bfb
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_c1a
	ReleaseAll
	End
@ bdc

Script_branch_bdc: @ bdc
	Message 0x3c
	FacePlayer
	Message 0x3d
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c39
	Jump Script_branch_cb2
Script_branch_bfb: @ bfb
	Message 0x44
	FacePlayer
	Message 0x45
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c39
	Jump Script_branch_cb2
Script_branch_c1a: @ c1a
	Message 0x4c
	FacePlayer
	Message 0x4d
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c39
	Jump Script_branch_cb2
Script_branch_c39: @ c39
	CloseMsgOnKeyPress
	TrainerBattle 0x21e, 0x21f
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21e
	SetTrainerId 0x21f
	Call Function_d21
	CopyVar 0x8008, 0x40fd
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_c91
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_c9c
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_ca7
	ReleaseAll
	End
@ c91

Script_branch_c91: @ c91
	Message 0x3f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c9c

Script_branch_c9c: @ c9c
	Message 0x47
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ca7

Script_branch_ca7: @ ca7
	Message 0x4f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cb2

Script_branch_cb2: @ cb2
	CloseMsgOnKeyPress
	Call Function_d21
	ReleaseAll
	End
@ cbe

Script_branch_cbe: @ cbe
	CopyVar 0x8008, 0x40fd
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_ced
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_cf8
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_d03
	End
@ ced

Script_branch_ced: @ ced
	Message 0x3f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cf8

Script_branch_cf8: @ cf8
	Message 0x47
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d03

Script_branch_d03: @ d03
	Message 0x4f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d0e

Script_branch_d0e: @ d0e
	FacePlayer
	Message 0x37
	WaitButton
	CloseMsgOnKeyPress
	Call Function_d21
	ReleaseAll
	End
@ d21

Function_d21: @ d21
	ApplyMovement 0x1, Movement_2134
	WaitMovement
	Return
@ d2d

Script_10: @ d2d
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x21b
	ClearTrainerId 0x21b
	CompareLastResultJump EQUAL, Script_branch_e68
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_eb8
	CopyVar 0x8008, 0x40fe
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_d86
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_da5
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_dc4
	ReleaseAll
	End
@ d86

Script_branch_d86: @ d86
	Message 0x52
	FacePlayer
	Message 0x53
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_de3
	Jump Script_branch_e5c
Script_branch_da5: @ da5
	Message 0x5a
	FacePlayer
	Message 0x5b
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_de3
	Jump Script_branch_e5c
Script_branch_dc4: @ dc4
	Message 0x62
	FacePlayer
	Message 0x63
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_de3
	Jump Script_branch_e5c
Script_branch_de3: @ de3
	CloseMsgOnKeyPress
	TrainerBattle 0x21b, 0x217
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21b
	SetTrainerId 0x217
	Call Function_ecb
	CopyVar 0x8008, 0x40fe
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_e3b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_e46
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_e51
	ReleaseAll
	End
@ e3b

Script_branch_e3b: @ e3b
	Message 0x55
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e46

Script_branch_e46: @ e46
	Message 0x5d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e51

Script_branch_e51: @ e51
	Message 0x65
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e5c

Script_branch_e5c: @ e5c
	CloseMsgOnKeyPress
	Call Function_ecb
	ReleaseAll
	End
@ e68

Script_branch_e68: @ e68
	CopyVar 0x8008, 0x40fe
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_e97
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_ea2
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_ead
	End
@ e97

Script_branch_e97: @ e97
	Message 0x55
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ea2

Script_branch_ea2: @ ea2
	Message 0x5d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ead

Script_branch_ead: @ ead
	Message 0x65
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ eb8

Script_branch_eb8: @ eb8
	FacePlayer
	Message 0x50
	WaitButton
	CloseMsgOnKeyPress
	Call Function_ecb
	ReleaseAll
	End
@ ecb

Function_ecb: @ ecb
	ApplyMovement 0x11, Movement_212c
	WaitMovement
	Return
@ ed7

Script_11: @ ed7
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x217
	ClearTrainerId 0x217
	CompareLastResultJump EQUAL, Script_branch_1012
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1062
	CopyVar 0x8008, 0x40fe
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_f30
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_f4f
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_f6e
	ReleaseAll
	End
@ f30

Script_branch_f30: @ f30
	Message 0x56
	FacePlayer
	Message 0x57
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f8d
	Jump Script_branch_1006
Script_branch_f4f: @ f4f
	Message 0x5e
	FacePlayer
	Message 0x5f
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f8d
	Jump Script_branch_1006
Script_branch_f6e: @ f6e
	Message 0x66
	FacePlayer
	Message 0x67
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f8d
	Jump Script_branch_1006
Script_branch_f8d: @ f8d
	CloseMsgOnKeyPress
	TrainerBattle 0x21b, 0x217
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21b
	SetTrainerId 0x217
	Call Function_1075
	CopyVar 0x8008, 0x40fe
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_fe5
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_ff0
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_ffb
	ReleaseAll
	End
@ fe5

Script_branch_fe5: @ fe5
	Message 0x59
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ff0

Script_branch_ff0: @ ff0
	Message 0x61
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ffb

Script_branch_ffb: @ ffb
	Message 0x69
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1006

Script_branch_1006: @ 1006
	CloseMsgOnKeyPress
	Call Function_1075
	ReleaseAll
	End
@ 1012

Script_branch_1012: @ 1012
	CopyVar 0x8008, 0x40fe
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1041
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_104c
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1057
	End
@ 1041

Script_branch_1041: @ 1041
	Message 0x59
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 104c

Script_branch_104c: @ 104c
	Message 0x61
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1057

Script_branch_1057: @ 1057
	Message 0x69
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1062

Script_branch_1062: @ 1062
	FacePlayer
	Message 0x51
	WaitButton
	CloseMsgOnKeyPress
	Call Function_1075
	ReleaseAll
	End
@ 1075

Function_1075: @ 1075
	ApplyMovement 0xa, Movement_2134
	WaitMovement
	Return
@ 1081

Script_12: @ 1081
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x224
	ClearTrainerId 0x224
	CompareLastResultJump EQUAL, Script_branch_11bc
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_120c
	CopyVar 0x8008, 0x40ff
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_10da
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_10f9
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1118
	ReleaseAll
	End
@ 10da

Script_branch_10da: @ 10da
	Message 0x6c
	FacePlayer
	Message 0x6d
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1137
	Jump Script_branch_11b0
Script_branch_10f9: @ 10f9
	Message 0x74
	FacePlayer
	Message 0x75
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1137
	Jump Script_branch_11b0
Script_branch_1118: @ 1118
	Message 0x7c
	FacePlayer
	Message 0x7d
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1137
	Jump Script_branch_11b0
Script_branch_1137: @ 1137
	CloseMsgOnKeyPress
	TrainerBattle 0x224, 0x21c
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x224
	SetTrainerId 0x21c
	Call Function_121f
	CopyVar 0x8008, 0x40ff
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_118f
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_119a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_11a5
	ReleaseAll
	End
@ 118f

Script_branch_118f: @ 118f
	Message 0x6f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 119a

Script_branch_119a: @ 119a
	Message 0x77
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11a5

Script_branch_11a5: @ 11a5
	Message 0x7f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11b0

Script_branch_11b0: @ 11b0
	CloseMsgOnKeyPress
	Call Function_121f
	ReleaseAll
	End
@ 11bc

Script_branch_11bc: @ 11bc
	CopyVar 0x8008, 0x40ff
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_11eb
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_11f6
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1201
	End
@ 11eb

Script_branch_11eb: @ 11eb
	Message 0x6f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11f6

Script_branch_11f6: @ 11f6
	Message 0x77
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1201

Script_branch_1201: @ 1201
	Message 0x7f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 120c

Script_branch_120c: @ 120c
	FacePlayer
	Message 0x6a
	WaitButton
	CloseMsgOnKeyPress
	Call Function_121f
	ReleaseAll
	End
@ 121f

Function_121f: @ 121f
	ApplyMovement 0xf, Movement_212c
	WaitMovement
	Return
@ 122b

Script_13: @ 122b
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x21c
	ClearTrainerId 0x21c
	CompareLastResultJump EQUAL, Script_branch_1366
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_13b6
	CopyVar 0x8008, 0x40ff
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1284
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_12a3
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_12c2
	ReleaseAll
	End
@ 1284

Script_branch_1284: @ 1284
	Message 0x70
	FacePlayer
	Message 0x71
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_12e1
	Jump Script_branch_135a
Script_branch_12a3: @ 12a3
	Message 0x78
	FacePlayer
	Message 0x79
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_12e1
	Jump Script_branch_135a
Script_branch_12c2: @ 12c2
	Message 0x80
	FacePlayer
	Message 0x81
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_12e1
	Jump Script_branch_135a
Script_branch_12e1: @ 12e1
	CloseMsgOnKeyPress
	TrainerBattle 0x224, 0x21c
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x224
	SetTrainerId 0x21c
	Call Function_13c9
	CopyVar 0x8008, 0x40ff
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1339
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1344
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_134f
	ReleaseAll
	End
@ 1339

Script_branch_1339: @ 1339
	Message 0x73
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1344

Script_branch_1344: @ 1344
	Message 0x7b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 134f

Script_branch_134f: @ 134f
	Message 0x83
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 135a

Script_branch_135a: @ 135a
	CloseMsgOnKeyPress
	Call Function_13c9
	ReleaseAll
	End
@ 1366

Script_branch_1366: @ 1366
	CopyVar 0x8008, 0x40ff
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1395
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_13a0
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_13ab
	End
@ 1395

Script_branch_1395: @ 1395
	Message 0x73
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13a0

Script_branch_13a0: @ 13a0
	Message 0x7b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13ab

Script_branch_13ab: @ 13ab
	Message 0x83
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13b6

Script_branch_13b6: @ 13b6
	FacePlayer
	Message 0x6b
	WaitButton
	CloseMsgOnKeyPress
	Call Function_13c9
	ReleaseAll
	End
@ 13c9

Function_13c9: @ 13c9
	ApplyMovement 0xd, Movement_2134
	WaitMovement
	Return
@ 13d5

Script_14: @ 13d5
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x228
	ClearTrainerId 0x228
	CompareLastResultJump EQUAL, Script_branch_1510
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1560
	CopyVar 0x8008, 0x4100
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_142e
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_144d
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_146c
	ReleaseAll
	End
@ 142e

Script_branch_142e: @ 142e
	Message 0x86
	FacePlayer
	Message 0x87
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_148b
	Jump Script_branch_1504
Script_branch_144d: @ 144d
	Message 0x8e
	FacePlayer
	Message 0x8f
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_148b
	Jump Script_branch_1504
Script_branch_146c: @ 146c
	Message 0x96
	FacePlayer
	Message 0x97
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_148b
	Jump Script_branch_1504
Script_branch_148b: @ 148b
	CloseMsgOnKeyPress
	TrainerBattle 0x228, 0x220
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x228
	SetTrainerId 0x220
	Call Function_1573
	CopyVar 0x8008, 0x4100
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_14e3
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_14ee
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_14f9
	ReleaseAll
	End
@ 14e3

Script_branch_14e3: @ 14e3
	Message 0x89
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14ee

Script_branch_14ee: @ 14ee
	Message 0x91
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14f9

Script_branch_14f9: @ 14f9
	Message 0x99
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1504

Script_branch_1504: @ 1504
	CloseMsgOnKeyPress
	Call Function_1573
	ReleaseAll
	End
@ 1510

Script_branch_1510: @ 1510
	CopyVar 0x8008, 0x4100
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_153f
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_154a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1555
	End
@ 153f

Script_branch_153f: @ 153f
	Message 0x89
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 154a

Script_branch_154a: @ 154a
	Message 0x91
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1555

Script_branch_1555: @ 1555
	Message 0x99
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1560

Script_branch_1560: @ 1560
	FacePlayer
	Message 0x84
	WaitButton
	CloseMsgOnKeyPress
	Call Function_1573
	ReleaseAll
	End
@ 1573

Function_1573: @ 1573
	ApplyMovement 0xb, Movement_212c
	WaitMovement
	Return
@ 157f

Script_15: @ 157f
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x220
	ClearTrainerId 0x220
	CompareLastResultJump EQUAL, Script_branch_16ba
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_170a
	CopyVar 0x8008, 0x4100
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_15d8
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_15f7
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1616
	ReleaseAll
	End
@ 15d8

Script_branch_15d8: @ 15d8
	Message 0x8a
	FacePlayer
	Message 0x8b
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1635
	Jump Script_branch_16ae
Script_branch_15f7: @ 15f7
	Message 0x92
	FacePlayer
	Message 0x93
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1635
	Jump Script_branch_16ae
Script_branch_1616: @ 1616
	Message 0x9a
	FacePlayer
	Message 0x9b
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1635
	Jump Script_branch_16ae
Script_branch_1635: @ 1635
	CloseMsgOnKeyPress
	TrainerBattle 0x228, 0x220
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x228
	SetTrainerId 0x220
	Call Function_171d
	CopyVar 0x8008, 0x4100
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_168d
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1698
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_16a3
	ReleaseAll
	End
@ 168d

Script_branch_168d: @ 168d
	Message 0x8d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1698

Script_branch_1698: @ 1698
	Message 0x95
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16a3

Script_branch_16a3: @ 16a3
	Message 0x9d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16ae

Script_branch_16ae: @ 16ae
	CloseMsgOnKeyPress
	Call Function_171d
	ReleaseAll
	End
@ 16ba

Script_branch_16ba: @ 16ba
	CopyVar 0x8008, 0x4100
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_16e9
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_16f4
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_16ff
	End
@ 16e9

Script_branch_16e9: @ 16e9
	Message 0x8d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16f4

Script_branch_16f4: @ 16f4
	Message 0x95
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16ff

Script_branch_16ff: @ 16ff
	Message 0x9d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 170a

Script_branch_170a: @ 170a
	FacePlayer
	Message 0x85
	WaitButton
	CloseMsgOnKeyPress
	Call Function_171d
	ReleaseAll
	End
@ 171d

Function_171d: @ 171d
	ApplyMovement 0xc, Movement_2134
	WaitMovement
	Return
@ 1729

Script_16: @ 1729
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x21a
	ClearTrainerId 0x21a
	CompareLastResultJump EQUAL, Script_branch_1864
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_18b4
	CopyVar 0x8008, 0x4101
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1782
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_17a1
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_17c0
	ReleaseAll
	End
@ 1782

Script_branch_1782: @ 1782
	Message 0xa0
	FacePlayer
	Message 0xa1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17df
	Jump Script_branch_1858
Script_branch_17a1: @ 17a1
	Message 0xa8
	FacePlayer
	Message 0xa9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17df
	Jump Script_branch_1858
Script_branch_17c0: @ 17c0
	Message 0xb0
	FacePlayer
	Message 0xb1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17df
	Jump Script_branch_1858
Script_branch_17df: @ 17df
	CloseMsgOnKeyPress
	TrainerBattle 0x21a, 0x223
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21a
	SetTrainerId 0x223
	Call Function_18c7
	CopyVar 0x8008, 0x4101
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1837
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1842
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_184d
	ReleaseAll
	End
@ 1837

Script_branch_1837: @ 1837
	Message 0xa3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1842

Script_branch_1842: @ 1842
	Message 0xab
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 184d

Script_branch_184d: @ 184d
	Message 0xb3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1858

Script_branch_1858: @ 1858
	CloseMsgOnKeyPress
	Call Function_18c7
	ReleaseAll
	End
@ 1864

Script_branch_1864: @ 1864
	CopyVar 0x8008, 0x4101
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1893
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_189e
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_18a9
	End
@ 1893

Script_branch_1893: @ 1893
	Message 0xa3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 189e

Script_branch_189e: @ 189e
	Message 0xab
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18a9

Script_branch_18a9: @ 18a9
	Message 0xb3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18b4

Script_branch_18b4: @ 18b4
	FacePlayer
	Message 0x9e
	WaitButton
	CloseMsgOnKeyPress
	Call Function_18c7
	ReleaseAll
	End
@ 18c7

Function_18c7: @ 18c7
	ApplyMovement 0x5, Movement_212c
	WaitMovement
	Return
@ 18d3

Script_17: @ 18d3
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x223
	ClearTrainerId 0x223
	CompareLastResultJump EQUAL, Script_branch_1a0e
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1a5e
	CopyVar 0x8008, 0x4101
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_192c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_194b
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_196a
	ReleaseAll
	End
@ 192c

Script_branch_192c: @ 192c
	Message 0xa4
	FacePlayer
	Message 0xa5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1989
	Jump Script_branch_1a02
Script_branch_194b: @ 194b
	Message 0xac
	FacePlayer
	Message 0xad
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1989
	Jump Script_branch_1a02
Script_branch_196a: @ 196a
	Message 0xb4
	FacePlayer
	Message 0xb5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1989
	Jump Script_branch_1a02
Script_branch_1989: @ 1989
	CloseMsgOnKeyPress
	TrainerBattle 0x21a, 0x223
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21a
	SetTrainerId 0x223
	Call Function_1a71
	CopyVar 0x8008, 0x4101
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_19e1
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_19ec
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_19f7
	ReleaseAll
	End
@ 19e1

Script_branch_19e1: @ 19e1
	Message 0xa7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19ec

Script_branch_19ec: @ 19ec
	Message 0xaf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19f7

Script_branch_19f7: @ 19f7
	Message 0xb7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a02

Script_branch_1a02: @ 1a02
	CloseMsgOnKeyPress
	Call Function_1a71
	ReleaseAll
	End
@ 1a0e

Script_branch_1a0e: @ 1a0e
	CopyVar 0x8008, 0x4101
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1a3d
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1a48
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1a53
	End
@ 1a3d

Script_branch_1a3d: @ 1a3d
	Message 0xa7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a48

Script_branch_1a48: @ 1a48
	Message 0xaf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a53

Script_branch_1a53: @ 1a53
	Message 0xb7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a5e

Script_branch_1a5e: @ 1a5e
	FacePlayer
	Message 0x9f
	WaitButton
	CloseMsgOnKeyPress
	Call Function_1a71
	ReleaseAll
	End
@ 1a71

Function_1a71: @ 1a71
	ApplyMovement 0x4, Movement_2134
	WaitMovement
	Return
@ 1a7d

Script_18: @ 1a7d
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x21d
	ClearTrainerId 0x21d
	CompareLastResultJump EQUAL, Script_branch_1bb8
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1c08
	CopyVar 0x8008, 0x4102
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ad6
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1af5
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1b14
	ReleaseAll
	End
@ 1ad6

Script_branch_1ad6: @ 1ad6
	Message 0xba
	FacePlayer
	Message 0xbb
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1b33
	Jump Script_branch_1bac
Script_branch_1af5: @ 1af5
	Message 0xc2
	FacePlayer
	Message 0xc3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1b33
	Jump Script_branch_1bac
Script_branch_1b14: @ 1b14
	Message 0xca
	FacePlayer
	Message 0xcb
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1b33
	Jump Script_branch_1bac
Script_branch_1b33: @ 1b33
	CloseMsgOnKeyPress
	TrainerBattle 0x21d, 0x226
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21d
	SetTrainerId 0x226
	Call Function_1c1b
	CopyVar 0x8008, 0x4102
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1b8b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b96
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1ba1
	ReleaseAll
	End
@ 1b8b

Script_branch_1b8b: @ 1b8b
	Message 0xbd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b96

Script_branch_1b96: @ 1b96
	Message 0xc5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ba1

Script_branch_1ba1: @ 1ba1
	Message 0xcd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bac

Script_branch_1bac: @ 1bac
	CloseMsgOnKeyPress
	Call Function_1c1b
	ReleaseAll
	End
@ 1bb8

Script_branch_1bb8: @ 1bb8
	CopyVar 0x8008, 0x4102
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1be7
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1bf2
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1bfd
	End
@ 1be7

Script_branch_1be7: @ 1be7
	Message 0xbd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bf2

Script_branch_1bf2: @ 1bf2
	Message 0xc5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bfd

Script_branch_1bfd: @ 1bfd
	Message 0xcd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c08

Script_branch_1c08: @ 1c08
	FacePlayer
	Message 0xb8
	WaitButton
	CloseMsgOnKeyPress
	Call Function_1c1b
	ReleaseAll
	End
@ 1c1b

Function_1c1b: @ 1c1b
	ApplyMovement 0x7, Movement_212c
	WaitMovement
	Return
@ 1c27

Script_19: @ 1c27
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x226
	ClearTrainerId 0x226
	CompareLastResultJump EQUAL, Script_branch_1d62
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1db2
	CopyVar 0x8008, 0x4102
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1c80
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1c9f
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1cbe
	ReleaseAll
	End
@ 1c80

Script_branch_1c80: @ 1c80
	Message 0xbe
	FacePlayer
	Message 0xbf
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1cdd
	Jump Script_branch_1d56
Script_branch_1c9f: @ 1c9f
	Message 0xc6
	FacePlayer
	Message 0xc7
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1cdd
	Jump Script_branch_1d56
Script_branch_1cbe: @ 1cbe
	Message 0xce
	FacePlayer
	Message 0xcf
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1cdd
	Jump Script_branch_1d56
Script_branch_1cdd: @ 1cdd
	CloseMsgOnKeyPress
	TrainerBattle 0x21d, 0x226
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x21d
	SetTrainerId 0x226
	Call Function_1dc5
	CopyVar 0x8008, 0x4102
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d35
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d40
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1d4b
	ReleaseAll
	End
@ 1d35

Script_branch_1d35: @ 1d35
	Message 0xc1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d40

Script_branch_1d40: @ 1d40
	Message 0xc9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d4b

Script_branch_1d4b: @ 1d4b
	Message 0xd1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d56

Script_branch_1d56: @ 1d56
	CloseMsgOnKeyPress
	Call Function_1dc5
	ReleaseAll
	End
@ 1d62

Script_branch_1d62: @ 1d62
	CopyVar 0x8008, 0x4102
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d91
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d9c
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1da7
	End
@ 1d91

Script_branch_1d91: @ 1d91
	Message 0xc1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d9c

Script_branch_1d9c: @ 1d9c
	Message 0xc9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1da7

Script_branch_1da7: @ 1da7
	Message 0xd1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1db2

Script_branch_1db2: @ 1db2
	FacePlayer
	Message 0xb9
	WaitButton
	CloseMsgOnKeyPress
	Call Function_1dc5
	ReleaseAll
	End
@ 1dc5

Function_1dc5: @ 1dc5
	ApplyMovement 0x8, Movement_2134
	WaitMovement
	Return
@ 1dd1

Script_20: @ 1dd1
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x225
	ClearTrainerId 0x225
	CompareLastResultJump EQUAL, Script_branch_1f0c
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1f5c
	CopyVar 0x8008, 0x4103
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e2a
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1e49
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1e68
	ReleaseAll
	End
@ 1e2a

Script_branch_1e2a: @ 1e2a
	Message 0xd4
	FacePlayer
	Message 0xd5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e87
	Jump Script_branch_1f00
Script_branch_1e49: @ 1e49
	Message 0xdc
	FacePlayer
	Message 0xdd
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e87
	Jump Script_branch_1f00
Script_branch_1e68: @ 1e68
	Message 0xe4
	FacePlayer
	Message 0xe5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e87
	Jump Script_branch_1f00
Script_branch_1e87: @ 1e87
	CloseMsgOnKeyPress
	TrainerBattle 0x225, 0x219
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x225
	SetTrainerId 0x219
	Call Function_1f6f
	CopyVar 0x8008, 0x4103
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1edf
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1eea
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1ef5
	ReleaseAll
	End
@ 1edf

Script_branch_1edf: @ 1edf
	Message 0xd7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1eea

Script_branch_1eea: @ 1eea
	Message 0xdf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ef5

Script_branch_1ef5: @ 1ef5
	Message 0xe7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f00

Script_branch_1f00: @ 1f00
	CloseMsgOnKeyPress
	Call Function_1f6f
	ReleaseAll
	End
@ 1f0c

Script_branch_1f0c: @ 1f0c
	CopyVar 0x8008, 0x4103
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1f3b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1f46
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1f51
	End
@ 1f3b

Script_branch_1f3b: @ 1f3b
	Message 0xd7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f46

Script_branch_1f46: @ 1f46
	Message 0xdf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f51

Script_branch_1f51: @ 1f51
	Message 0xe7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f5c

Script_branch_1f5c: @ 1f5c
	FacePlayer
	Message 0xd2
	WaitButton
	CloseMsgOnKeyPress
	Call Function_1f6f
	ReleaseAll
	End
@ 1f6f

Function_1f6f: @ 1f6f
	ApplyMovement 0xe, Movement_212c
	WaitMovement
	Return
@ 1f7b

Script_21: @ 1f7b
	PlayFanfare 0x5dc
	LockAll
	ClearTrainerId 0x219
	ClearTrainerId 0x219
	CompareLastResultJump EQUAL, Script_branch_20b6
	CheckPokePartyHealth 0x800c, 0x6
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2106
	CopyVar 0x8008, 0x4103
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1fd4
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1ff3
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_2012
	ReleaseAll
	End
@ 1fd4

Script_branch_1fd4: @ 1fd4
	Message 0xd8
	FacePlayer
	Message 0xd9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2031
	Jump Script_branch_20aa
Script_branch_1ff3: @ 1ff3
	Message 0xe0
	FacePlayer
	Message 0xe1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2031
	Jump Script_branch_20aa
Script_branch_2012: @ 2012
	Message 0xe8
	FacePlayer
	Message 0xe9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2031
	Jump Script_branch_20aa
Script_branch_2031: @ 2031
	CloseMsgOnKeyPress
	TrainerBattle 0x225, 0x219
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2125
	SetTrainerId 0x225
	SetTrainerId 0x219
	Call Function_2119
	CopyVar 0x8008, 0x4103
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_2089
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_2094
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_209f
	ReleaseAll
	End
@ 2089

Script_branch_2089: @ 2089
	Message 0xdb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2094

Script_branch_2094: @ 2094
	Message 0xe3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 209f

Script_branch_209f: @ 209f
	Message 0xeb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 20aa

Script_branch_20aa: @ 20aa
	CloseMsgOnKeyPress
	Call Function_2119
	ReleaseAll
	End
@ 20b6

Script_branch_20b6: @ 20b6
	CopyVar 0x8008, 0x4103
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_20e5
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_20f0
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_20fb
	End
@ 20e5

Script_branch_20e5: @ 20e5
	Message 0xdb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 20f0

Script_branch_20f0: @ 20f0
	Message 0xe3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 20fb

Script_branch_20fb: @ 20fb
	Message 0xeb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2106

Script_branch_2106: @ 2106
	FacePlayer
	Message 0xd3
	WaitButton
	CloseMsgOnKeyPress
	Call Function_2119
	ReleaseAll
	End
@ 2119

Function_2119: @ 2119
	ApplyMovement 0x10, Movement_2134
	WaitMovement
	Return
@ 2125

Script_branch_2125: @ 2125
	LostGoPc
	ReleaseAll
	End
@ 212b

.byte 0x0 @ 0x212b

Movement_212c: @ 212c
	SeeRight 0x1
	EndMovement 0x0
@ 2134

Movement_2134: @ 2134
	SeeLeft 0x1
	EndMovement 0x0
@ 213c

@ end_0x213c
