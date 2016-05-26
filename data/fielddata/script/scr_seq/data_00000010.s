.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 31

Script_2: @ 31
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Script_3: @ 44
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
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
Script_branch_62: @ 62
	Message 0x4
	Multi 0x1, 0x1, 0x0, 0x1, 0x8004
	CheckPtchAppl 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_a2
	Call Function_fe
	Call Function_122
	Call Function_146
	Call Function_16a
	Call Function_18e
	Call Function_1b2
Script_branch_a2: @ a2
	ChoiceMulti 0x102, 0x0
	CloseMulti
	If 0x8004, 0x1
	CompareLastResultJump 0x1, Script_branch_119
	If 0x8004, 0x2
	CompareLastResultJump 0x1, Script_branch_13d
	If 0x8004, 0x3
	CompareLastResultJump 0x1, Script_branch_161
	If 0x8004, 0x4
	CompareLastResultJump 0x1, Script_branch_185
	If 0x8004, 0x5
	CompareLastResultJump 0x1, Script_branch_1a9
	If 0x8004, 0x6
	CompareLastResultJump 0x1, Script_branch_1cd
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fe

Function_fe: @ fe
	StorePoketchApp 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d6
	ChoiceMulti 0xe9, 0x1
	Return
@ 119

Script_branch_119: @ 119
	Message 0xb
	Jump Script_branch_62
@ 122

Function_122: @ 122
	StorePoketchApp 0xb, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d6
	ChoiceMulti 0xed, 0x2
	Return
@ 13d

Script_branch_13d: @ 13d
	Message 0xc
	Jump Script_branch_62
@ 146

Function_146: @ 146
	StorePoketchApp 0x17, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d6
	ChoiceMulti 0xea, 0x3
	Return
@ 161

Script_branch_161: @ 161
	Message 0xe
	Jump Script_branch_62
@ 16a

Function_16a: @ 16a
	StorePoketchApp 0x14, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d6
	ChoiceMulti 0xfa, 0x4
	Return
@ 185

Script_branch_185: @ 185
	Message 0xf
	Jump Script_branch_62
@ 18e

Function_18e: @ 18e
	StorePoketchApp 0x18, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d6
	ChoiceMulti 0xf9, 0x5
	Return
@ 1a9

Script_branch_1a9: @ 1a9
	Message 0xd
	Jump Script_branch_62
@ 1b2

Function_1b2: @ 1b2
	StorePoketchApp 0x10, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d6
	ChoiceMulti 0xfe, 0x6
	Return
@ 1cd

Script_branch_1cd: @ 1cd
	Message 0x10
	Jump Script_branch_62
@ 1d6

Script_branch_1d6: @ 1d6
	Return
@ 1d8

Script_5: @ 1d8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
Script_branch_1e3: @ 1e3
	Message 0x6
	Multi 0x1, 0x1, 0x0, 0x1, 0x8004
	CheckPtchAppl 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_229
	Call Function_292
	Call Function_2b6
	Call Function_2da
	Call Function_2fe
	Call Function_322
	Call Function_346
	Call Function_36a
Script_branch_229: @ 229
	ChoiceMulti 0x102, 0x0
	CloseMulti
	If 0x8004, 0x1
	CompareLastResultJump 0x1, Script_branch_2ad
	If 0x8004, 0x2
	CompareLastResultJump 0x1, Script_branch_2d1
	If 0x8004, 0x3
	CompareLastResultJump 0x1, Script_branch_2f5
	If 0x8004, 0x4
	CompareLastResultJump 0x1, Script_branch_319
	If 0x8004, 0x5
	CompareLastResultJump 0x1, Script_branch_33d
	If 0x8004, 0x6
	CompareLastResultJump 0x1, Script_branch_361
	If 0x8004, 0x7
	CompareLastResultJump 0x1, Script_branch_385
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 292

Function_292: @ 292
	StorePoketchApp 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_38e
	ChoiceMulti 0xeb, 0x1
	Return
@ 2ad

Script_branch_2ad: @ 2ad
	Message 0x11
	Jump Script_branch_1e3
@ 2b6

Function_2b6: @ 2b6
	StorePoketchApp 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_38e
	ChoiceMulti 0xec, 0x2
	Return
@ 2d1

Script_branch_2d1: @ 2d1
	Message 0x18
	Jump Script_branch_1e3
@ 2da

Function_2da: @ 2da
	StorePoketchApp 0x5, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_38e
	ChoiceMulti 0xf0, 0x3
	Return
@ 2f5

Script_branch_2f5: @ 2f5
	Message 0x13
	Jump Script_branch_1e3
@ 2fe

Function_2fe: @ 2fe
	StorePoketchApp 0x8, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_38e
	ChoiceMulti 0xf4, 0x4
	Return
@ 319

Script_branch_319: @ 319
	Message 0x14
	Jump Script_branch_1e3
@ 322

Function_322: @ 322
	StorePoketchApp 0x16, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_38e
	ChoiceMulti 0xf8, 0x5
	Return
@ 33d

Script_branch_33d: @ 33d
	Message 0x15
	Jump Script_branch_1e3
@ 346

Function_346: @ 346
	StorePoketchApp 0x9, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_38e
	ChoiceMulti 0x101, 0x6
	Return
@ 361

Script_branch_361: @ 361
	Message 0x16
	Jump Script_branch_1e3
@ 36a

Function_36a: @ 36a
	StorePoketchApp 0x7, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_38e
	ChoiceMulti 0xfc, 0x7
	Return
@ 385

Script_branch_385: @ 385
	Message 0x17
	Jump Script_branch_1e3
@ 38e

Script_branch_38e: @ 38e
	Return
@ 390

Script_6: @ 390
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
Script_branch_39b: @ 39b
	Message 0x8
	Multi 0x1, 0x1, 0x0, 0x1, 0x8004
	CheckPtchAppl 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_3db
	Call Function_437
	Call Function_45b
	Call Function_47f
	Call Function_4a3
	Call Function_4c7
	Call Function_4eb
Script_branch_3db: @ 3db
	ChoiceMulti 0x102, 0x0
	CloseMulti
	If 0x8004, 0x1
	CompareLastResultJump 0x1, Script_branch_452
	If 0x8004, 0x2
	CompareLastResultJump 0x1, Script_branch_476
	If 0x8004, 0x3
	CompareLastResultJump 0x1, Script_branch_49a
	If 0x8004, 0x4
	CompareLastResultJump 0x1, Script_branch_4be
	If 0x8004, 0x5
	CompareLastResultJump 0x1, Script_branch_4e2
	If 0x8004, 0x6
	CompareLastResultJump 0x1, Script_branch_506
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 437

Function_437: @ 437
	StorePoketchApp 0x4, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_50f
	ChoiceMulti 0xef, 0x1
	Return
@ 452

Script_branch_452: @ 452
	Message 0x12
	Jump Script_branch_39b
@ 45b

Function_45b: @ 45b
	StorePoketchApp 0x11, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_50f
	ChoiceMulti 0xee, 0x2
	Return
@ 476

Script_branch_476: @ 476
	Message 0x19
	Jump Script_branch_39b
@ 47f

Function_47f: @ 47f
	StorePoketchApp 0xe, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_50f
	ChoiceMulti 0xf6, 0x3
	Return
@ 49a

Script_branch_49a: @ 49a
	Message 0x1d
	Jump Script_branch_39b
@ 4a3

Function_4a3: @ 4a3
	StorePoketchApp 0x12, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_50f
	ChoiceMulti 0xf5, 0x4
	Return
@ 4be

Script_branch_4be: @ 4be
	Message 0x1c
	Jump Script_branch_39b
@ 4c7

Function_4c7: @ 4c7
	StorePoketchApp 0x15, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_50f
	ChoiceMulti 0xfd, 0x5
	Return
@ 4e2

Script_branch_4e2: @ 4e2
	Message 0x1a
	Jump Script_branch_39b
@ 4eb

Function_4eb: @ 4eb
	StorePoketchApp 0xc, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_50f
	ChoiceMulti 0xfb, 0x6
	Return
@ 506

Script_branch_506: @ 506
	Message 0x1b
	Jump Script_branch_39b
@ 50f

Script_branch_50f: @ 50f
	Return
@ 511

Script_7: @ 511
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
Script_branch_51c: @ 51c
	Message 0xa
	Multi 0x1, 0x1, 0x0, 0x1, 0x8004
	CheckPtchAppl 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_55c
	Call Function_5b8
	Call Function_5dc
	Call Function_600
	Call Function_624
	Call Function_648
	Call Function_66c
Script_branch_55c: @ 55c
	ChoiceMulti 0x102, 0x0
	CloseMulti
	If 0x8004, 0x1
	CompareLastResultJump 0x1, Script_branch_5d3
	If 0x8004, 0x2
	CompareLastResultJump 0x1, Script_branch_5f7
	If 0x8004, 0x3
	CompareLastResultJump 0x1, Script_branch_61b
	If 0x8004, 0x4
	CompareLastResultJump 0x1, Script_branch_63f
	If 0x8004, 0x5
	CompareLastResultJump 0x1, Script_branch_663
	If 0x8004, 0x6
	CompareLastResultJump 0x1, Script_branch_687
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5b8

Function_5b8: @ 5b8
	StorePoketchApp 0x3, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_690
	ChoiceMulti 0xf3, 0x1
	Return
@ 5d3

Script_branch_5d3: @ 5d3
	Message 0x1e
	Jump Script_branch_51c
@ 5dc

Function_5dc: @ 5dc
	StorePoketchApp 0xa, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_690
	ChoiceMulti 0xf2, 0x2
	Return
@ 5f7

Script_branch_5f7: @ 5f7
	Message 0x20
	Jump Script_branch_51c
@ 600

Function_600: @ 600
	StorePoketchApp 0x13, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_690
	ChoiceMulti 0x100, 0x3
	Return
@ 61b

Script_branch_61b: @ 61b
	Message 0x21
	Jump Script_branch_51c
@ 624

Function_624: @ 624
	StorePoketchApp 0xd, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_690
	ChoiceMulti 0xff, 0x4
	Return
@ 63f

Script_branch_63f: @ 63f
	Message 0x22
	Jump Script_branch_51c
@ 648

Function_648: @ 648
	StorePoketchApp 0xf, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_690
	ChoiceMulti 0xf7, 0x5
	Return
@ 663

Script_branch_663: @ 663
	Message 0x23
	Jump Script_branch_51c
@ 66c

Function_66c: @ 66c
	StorePoketchApp 0x6, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_690
	ChoiceMulti 0xf1, 0x6
	Return
@ 687

Script_branch_687: @ 687
	Message 0x1f
	Jump Script_branch_51c
@ 690

Script_branch_690: @ 690
	Return
@ 692

.byte 0x0 @ 0x692
.byte 0x0 @ 0x693

@ end_0x694
