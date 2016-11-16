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
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_62
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_6a
	End
@ 62

Script_branch_62: @ 62
	SetVar 0x4020, 0x61
	End
@ 6a

Script_branch_6a: @ 6a
	SetVar 0x4020, 0x0
	End
@ 72

Script_2: @ 72
	LockAll
	ApplyMovement 0x2, Movement_664
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x6e
	CompareLastResultJump EQUAL, Script_branch_bf
	If 0x8004, 0x6f
	CompareLastResultJump EQUAL, Script_branch_eb
	If 0x8004, 0x70
	CompareLastResultJump EQUAL, Script_branch_117
	If 0x8004, 0x71
	CompareLastResultJump EQUAL, Script_branch_143
	End
@ bf

Script_branch_bf: @ bf
	ApplyMovement 0x2, Movement_670
	WaitMovement
	SetVariableRival 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_6a8
	ApplyMovement 0xff, Movement_810
	WaitMovement
	Jump Script_branch_16f
@ e9

.byte 0x2 @ 0xe9
.byte 0x0 @ 0xea

Script_branch_eb: @ eb
	ApplyMovement 0x2, Movement_680
	WaitMovement
	SetVariableRival 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_6c0
	ApplyMovement 0xff, Movement_824
	WaitMovement
	Jump Script_branch_16f
@ 115

.byte 0x2 @ 0x115
.byte 0x0 @ 0x116

Script_branch_117: @ 117
	ApplyMovement 0x2, Movement_690
	WaitMovement
	SetVariableRival 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_6d8
	ApplyMovement 0xff, Movement_838
	WaitMovement
	Jump Script_branch_16f
@ 141

.byte 0x2 @ 0x141
.byte 0x0 @ 0x142

Script_branch_143: @ 143
	ApplyMovement 0x2, Movement_698
	WaitMovement
	SetVariableRival 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_6f0
	ApplyMovement 0xff, Movement_84c
	WaitMovement
	Jump Script_branch_16f
@ 16d

.byte 0x2 @ 0x16d
.byte 0x0 @ 0x16e

Script_branch_16f: @ 16f
	SetVariableRival 0x0
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_708
	ApplyMovement 0xff, Movement_860
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_71c
	ApplyMovement 0xff, Movement_86c
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	Return2 0xf, 0x800c
	ApplyMovement 0x2, Movement_728
	ApplyMovement 0xff, Movement_878
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_730
	ApplyMovement 0x2, Movement_730
	WaitMovement
	PlaySound 0x44a
	ClearFlag 0x178
	AddPeople 0x5
	Lock 0x5
	ApplyMovement 0x5, Movement_7c0
	WaitMovement
	Message 0x6
	SetVariableRival 0x0
	Message 0x7
	Message 0x8
	ApplyMovement 0x2, Movement_740
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x9
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_748
	ApplyMovement 0x5, Movement_7c8
	WaitMovement
	Message 0xa
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	ApplyMovement 0x5, Movement_7d0
	WaitMovement
	Message 0xb
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_298
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_259
	End
@ 259

Script_branch_259: @ 259
	ApplyMovement 0x2, Movement_750
	WaitMovement
	SetVariableRival 0x0
	Message 0xc
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_758
	WaitMovement
	Message 0xd
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_298
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_259
	End
@ 298

Script_branch_298: @ 298
	ApplyMovement 0x2, Movement_758
	WaitMovement
	SetVariableRival 0x0
	Message 0xe
	Message 0xf
	Jump Script_branch_2b3
@ 2b1

.byte 0x2 @ 0x2b1
.byte 0x0 @ 0x2b2

Script_branch_2b3: @ 2b3
	ApplyMovement 0x2, Movement_768
	WaitMovement
	SetVariableRival 0x0
	Message 0x10
	ApplyMovement 0x2, Movement_770
	WaitMovement
	ApplyMovement 0xff, Movement_88c
	WaitMovement
	SetVarHero 0x1
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_30b
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2fd
	End
@ 2fd

Script_branch_2fd: @ 2fd
	SetVariableRival 0x0
	Message 0x12
	Jump Script_branch_2b3
@ 309

.byte 0x2 @ 0x309
.byte 0x0 @ 0x30a

Script_branch_30b: @ 30b
	Message 0x13
	ApplyMovement 0x2, Movement_768
	ApplyMovement 0xff, Movement_894
	WaitMovement
	SetVariableRival 0x0
	Message 0x14
	Message 0x15
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_7d8
	WaitMovement
	Return2 0x19, 0x800c
	ClearFlag 0x179
	AddPeople 0x6
	Lock 0x6
	CallStandard 0x7f8
	ApplyMovement 0x6, Movement_8c8
	WaitMovement
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_36e
	Jump Script_branch_3a6
@ 36c

.byte 0x2 @ 0x36c
.byte 0x0 @ 0x36d

Script_branch_36e: @ 36e
	Message 0x16
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_7e8
	WaitMovement
	ClearFlag 0x17d
	AddPeople 0xc
	Return2 0xf, 0x800c
	Message 0x17
	Message 0x1a
	ApplyMovement 0x6, Movement_8d0
	WaitMovement
	Message 0x1c
	Jump Script_branch_3de
@ 3a4

.byte 0x2 @ 0x3a4
.byte 0x0 @ 0x3a5

Script_branch_3a6: @ 3a6
	Message 0x18
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_7e8
	WaitMovement
	ClearFlag 0x17d
	AddPeople 0xc
	Return2 0xf, 0x800c
	Message 0x19
	Message 0x1b
	ApplyMovement 0x6, Movement_8d0
	WaitMovement
	Message 0x1d
	Jump Script_branch_3de
@ 3dc

.byte 0x2 @ 0x3dc
.byte 0x0 @ 0x3dd

Script_branch_3de: @ 3de
	Message 0x1e
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_7f0
	WaitMovement
	Return2 0xf, 0x800c
	Message 0x1f
	ApplyMovement 0x2, Movement_778
	WaitMovement
	SetVariableRival 0x0
	Message 0x21
	ApplyMovement 0x2, Movement_780
	WaitMovement
	SetVarHero 0x1
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	CallStandard 0x7f9
	ChangeOwMovement 0x2, 0x10
	SetVar 0x4086, 0x1
	ReleaseAll
	End
@ 42e

Script_13: @ 42e
	LockAll
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SetFlag 0x17d
	RemovePeople 0xc
	ChooseStarter
	BattleStarter
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	StoreStarter 0x8000
	GivePokemon 0x8000, 0x5, 0x0, 0x800c
	ApplyMovement 0x5, Movement_7f8
	ApplyMovement 0x2, Movement_760
	ApplyMovement 0xff, Movement_884
	WaitMovement
	SetVariableRival 0x0
	SetVarStrRival 0x2
	Message 0x24
	Message 0x25
	Message 0x26
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_800
	ApplyMovement 0x2, Movement_788
	ApplyMovement 0xff, Movement_89c
	WaitMovement
	SetFlag 0x178
	RemovePeople 0x5
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_4ca
	Jump Script_branch_4ee
@ 4c8

.byte 0x2 @ 0x4c8
.byte 0x0 @ 0x4c9

Script_branch_4ca: @ 4ca
	Message 0x27
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_8d8
	ApplyMovement 0xff, Movement_8a8
	WaitMovement
	Message 0x28
	CloseMsgOnKeyPress
	Jump Script_branch_512
@ 4ec

.byte 0x2 @ 0x4ec
.byte 0x0 @ 0x4ed

Script_branch_4ee: @ 4ee
	Message 0x29
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_8d8
	ApplyMovement 0xff, Movement_8a8
	WaitMovement
	Message 0x2a
	CloseMsgOnKeyPress
	Jump Script_branch_512
@ 510

.byte 0x2 @ 0x510
.byte 0x0 @ 0x511

Script_branch_512: @ 512
	ApplyMovement 0xff, Movement_8b0
	ApplyMovement 0x6, Movement_8e0
	WaitMovement
	SetFlag 0x179
	RemovePeople 0x6
	SetVariableRival 0x0
	Message 0x2b
	CloseMsgOnKeyPress
	Return2 0x28, 0x800c
	ApplyMovement 0x2, Movement_7a8
	ApplyMovement 0xff, Movement_8bc
	WaitMovement
	Jump Script_branch_554
@ 552

.byte 0x2 @ 0x552
.byte 0x0 @ 0x553

Script_branch_554: @ 554
	SetVarHero 0x1
	Message 0x2c
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_57a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_656
	End
@ 57a

Script_branch_57a: @ 57a
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x2f
	CloseMsgOnKeyPress
	FollowHero 0x2, 0xf
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_5bb
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_5c5
	Jump Script_branch_5b1
@ 5af

.byte 0x2 @ 0x5af
.byte 0x0 @ 0x5b0

Script_branch_5b1: @ 5b1
	StarterBattle 0x352, 0x16
	CallStandard 0x0
Script_branch_5bb: @ 5bb
	StarterBattle 0x353, 0x16
	Cmd_a 0x0, 0x0
Script_branch_5c5: @ 5c5
	StarterBattle 0x354, 0x16
	Nop0
	Nop0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5f5
	Lock 0x2
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x30
	Jump Script_branch_618
@ 5f3

.byte 0x2 @ 0x5f3
.byte 0x0 @ 0x5f4

Script_branch_5f5: @ 5f5
	CallEnd
	Lock 0x2
	FadeScreen 0x6, 0x3, 0x1, 0x0
	ResetScreen
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x31
	Jump Script_branch_618
@ 616

.byte 0x2 @ 0x616
.byte 0x0 @ 0x617

Script_branch_618: @ 618
	CloseMsgOnKeyPress
	SetVar 0x4086, 0x2
	SetVar 0x40a4, 0x3
	Return2 0x1e, 0x800c
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	HealPokemon
	Warp 0x19e, 0x0, 0x2, 0x6, 0x0
	FadeScreen 0x6, 0x3, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 656

Script_branch_656: @ 656
	SetVariableRival 0x0
	Message 0x2d
	Jump Script_branch_554
@ 662

.byte 0x2 @ 0x662
.byte 0x0 @ 0x663

Movement_664: @ 664
	MoveDownVeryFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 670

Movement_670: @ 670
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x2
	MoveDownFast 0x1
	EndMovement 0x0
@ 680

Movement_680: @ 680
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 690

Movement_690: @ 690
	WalkDownVeryFast  0x1
	EndMovement 0x0
@ 698

Movement_698: @ 698
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 6a8

Movement_6a8: @ 6a8
	WalkUpFast 0x1
	WalkRightFast 0x4
	WalkUpFast 0x2
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 6c0

Movement_6c0: @ 6c0
	WalkUpFast 0x1
	WalkRightFast 0x3
	WalkUpFast 0x2
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 6d8

Movement_6d8: @ 6d8
	WalkUpFast 0x1
	WalkRightFast 0x2
	WalkUpFast 0x2
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 6f0

Movement_6f0: @ 6f0
	WalkUpFast 0x1
	WalkRightFast 0x1
	WalkUpFast 0x2
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 708

Movement_708: @ 708
	WalkLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 714

.byte 0xf @ 0x714
.byte 0x0 @ 0x715
.byte 0x1 @ 0x716
.byte 0x0 @ 0x717
.byte 0xfe @ 0x718
.byte 0x0 @ 0x719
.byte 0x0 @ 0x71a
.byte 0x0 @ 0x71b

Movement_71c: @ 71c
	WalkLeftFast 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ 728

Movement_728: @ 728
	WalkRightVeryFast 0x3
	EndMovement 0x0
@ 730

Movement_730: @ 730
	Exclamation 0x1
	Move_41 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 740

Movement_740: @ 740
	MoveDownFast 0x1
	EndMovement 0x0
@ 748

Movement_748: @ 748
	MoveLeftFast 0x1
	EndMovement 0x0
@ 750

Movement_750: @ 750
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 758

Movement_758: @ 758
	MoveLeftFast 0x1
	EndMovement 0x0
@ 760

Movement_760: @ 760
	SeeLeft 0x1
	EndMovement 0x0
@ 768

Movement_768: @ 768
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 770

Movement_770: @ 770
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 778

Movement_778: @ 778
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 780

Movement_780: @ 780
	MoveDownFast 0x1
	EndMovement 0x0
@ 788

Movement_788: @ 788
	WalkUpFast 0x1
	MoveDownFast 0x1
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 79c

.byte 0x3f @ 0x79c
.byte 0x0 @ 0x79d
.byte 0x1 @ 0x79e
.byte 0x0 @ 0x79f
.byte 0x27 @ 0x7a0
.byte 0x0 @ 0x7a1
.byte 0x1 @ 0x7a2
.byte 0x0 @ 0x7a3
.byte 0xfe @ 0x7a4
.byte 0x0 @ 0x7a5
.byte 0x0 @ 0x7a6
.byte 0x0 @ 0x7a7

Movement_7a8: @ 7a8
	MoveDownFast 0x1
	Move_3f 0x3
	MoveDownVeryFast 0x8
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x1
	EndMovement 0x0
@ 7c0

Movement_7c0: @ 7c0
	WalkRightFast 0x8
	EndMovement 0x0
@ 7c8

Movement_7c8: @ 7c8
	WalkLeftFast 0x3
	EndMovement 0x0
@ 7d0

Movement_7d0: @ 7d0
	WalkRightFast 0x3
	EndMovement 0x0
@ 7d8

Movement_7d8: @ 7d8
	MoveLeftFast 0x1
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ 7e8

Movement_7e8: @ 7e8
	MoveLeftFast 0x1
	EndMovement 0x0
@ 7f0

Movement_7f0: @ 7f0
	MoveRightFast 0x1
	EndMovement 0x0
@ 7f8

Movement_7f8: @ 7f8
	MoveDownFast 0x1
	EndMovement 0x0
@ 800

Movement_800: @ 800
	Move_3f 0x2
	Move_3e 0x1
	WalkRightFast 0x9
	EndMovement 0x0
@ 810

Movement_810: @ 810
	WalkUpFast 0x2
	WalkRightFast 0x4
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 824

Movement_824: @ 824
	WalkUpFast 0x2
	WalkRightFast 0x3
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 838

Movement_838: @ 838
	WalkUpFast 0x2
	WalkRightFast 0x2
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 84c

Movement_84c: @ 84c
	WalkUpFast 0x2
	WalkRightFast 0x1
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 860

Movement_860: @ 860
	Move_3e 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 86c

Movement_86c: @ 86c
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 878

Movement_878: @ 878
	Move_3f 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 884

Movement_884: @ 884
	MoveUpFast 0x1
	EndMovement 0x0
@ 88c

Movement_88c: @ 88c
	SeeUp 0x1
	EndMovement 0x0
@ 894

Movement_894: @ 894
	MoveLeftFast 0x1
	EndMovement 0x0
@ 89c

Movement_89c: @ 89c
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 8a8

Movement_8a8: @ 8a8
	MoveUpFast 0x1
	EndMovement 0x0
@ 8b0

Movement_8b0: @ 8b0
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 8bc

Movement_8bc: @ 8bc
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 8c8

Movement_8c8: @ 8c8
	WalkRightFast 0x7
	EndMovement 0x0
@ 8d0

Movement_8d0: @ 8d0
	MoveRightFast 0x1
	EndMovement 0x0
@ 8d8

Movement_8d8: @ 8d8
	WalkRightFast 0x1
	EndMovement 0x0
@ 8e0

Movement_8e0: @ 8e0
	WalkRightFast 0x9
	EndMovement 0x0
@ 8e8

Script_14: @ 8e8
	LockAll
	CheckFacePosition 0x800c
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_903
	Jump Script_branch_935
@ 901

.byte 0x2 @ 0x901
.byte 0x0 @ 0x902

Script_branch_903: @ 903
	ApplyMovement 0xff, Movement_9d0
	ApplyMovement 0x2, Movement_9b0
	WaitMovement
	Call Function_967
	ApplyMovement 0xff, Movement_9c0
	ApplyMovement 0x2, Movement_998
	WaitMovement
	Jump Script_branch_97c
@ 933

.byte 0x2 @ 0x933
.byte 0x0 @ 0x934

Script_branch_935: @ 935
	ApplyMovement 0xff, Movement_9d8
	ApplyMovement 0x2, Movement_9b8
	WaitMovement
	Call Function_967
	ApplyMovement 0xff, Movement_9c8
	ApplyMovement 0x2, Movement_9a4
	WaitMovement
	Jump Script_branch_97c
@ 965

.byte 0x2 @ 0x965
.byte 0x0 @ 0x966

Function_967: @ 967
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x35
	CloseMsgOnKeyPress
	StopFollow
	FollowHero 0x2, 0xf
	Return
@ 97c

Script_branch_97c: @ 97c
	Call Function_986
	ReleaseAll
	End
@ 986

Function_986: @ 986
	StartFollow
	FollowHero 0x2, 0x30
	ContinueFollow 0x2, 0x1
	Return
@ 995

.byte 0x0 @ 0x995
.byte 0x0 @ 0x996
.byte 0x0 @ 0x997

Movement_998: @ 998
	WalkLeftFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 9a4

Movement_9a4: @ 9a4
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 9b0

Movement_9b0: @ 9b0
	SeeRight 0x1
	EndMovement 0x0
@ 9b8

Movement_9b8: @ 9b8
	SeeUp 0x1
	EndMovement 0x0
@ 9c0

Movement_9c0: @ 9c0
	WalkLeftFast 0x1
	EndMovement 0x0
@ 9c8

Movement_9c8: @ 9c8
	WalkDownFast 0x1
	EndMovement 0x0
@ 9d0

Movement_9d0: @ 9d0
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 9d8

Movement_9d8: @ 9d8
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 9e0

Script_3: @ 9e0
	LockAll
	ApplyMovement 0xff, Movement_a84
	ApplyMovement 0x2, Movement_a74
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x34
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x6e
	CompareLastResultJump EQUAL, Script_branch_a3b
	If 0x8004, 0x6f
	CompareLastResultJump EQUAL, Script_branch_a3b
	If 0x8004, 0x70
	CompareLastResultJump EQUAL, Script_branch_a3b
	If 0x8004, 0x71
	CompareLastResultJump EQUAL, Script_branch_a3b
	End
@ a3b

Script_branch_a3b: @ a3b
	StopFollow
	FollowHero 0x2, 0xf
	ApplyMovement 0xff, Movement_a7c
	ApplyMovement 0x2, Movement_a68
	WaitMovement
	Jump Script_branch_a5b
@ a5b

Script_branch_a5b: @ a5b
	Call Function_986
	ReleaseAll
	End
@ a65

.byte 0x0 @ 0xa65
.byte 0x0 @ 0xa66
.byte 0x0 @ 0xa67

Movement_a68: @ a68
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ a74

Movement_a74: @ a74
	MoveDownFast 0x1
	EndMovement 0x0
@ a7c

Movement_a7c: @ a7c
	WalkUpFast 0x1
	EndMovement 0x0
@ a84

Movement_a84: @ a84
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ a8c

Script_4: @ a8c
	LockAll
	ApplyMovement 0x2, Movement_ae4
	WaitMovement
	SetVariableRival 0x0
	Message 0x23
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_ab9
	Jump Script_branch_acb
@ ab7

.byte 0x2 @ 0xab7
.byte 0x0 @ 0xab8

Script_branch_ab9: @ ab9
	ApplyMovement 0xff, Movement_aec
	WaitMovement
	Jump Script_branch_add
@ ac9

.byte 0x2 @ 0xac9
.byte 0x0 @ 0xaca

Script_branch_acb: @ acb
	ApplyMovement 0xff, Movement_af4
	WaitMovement
	Jump Script_branch_add
@ adb

.byte 0x2 @ 0xadb
.byte 0x0 @ 0xadc

Script_branch_add: @ add
	ReleaseAll
	End
@ ae1

.byte 0x0 @ 0xae1
.byte 0x0 @ 0xae2
.byte 0x0 @ 0xae3

Movement_ae4: @ ae4
	MoveDownFast 0x1
	EndMovement 0x0
@ aec

Movement_aec: @ aec
	WalkLeftFast 0x1
	EndMovement 0x0
@ af4

Movement_af4: @ af4
	WalkUpFast 0x1
	EndMovement 0x0
@ afc

.byte 0xc @ 0xafc
.byte 0x0 @ 0xafd
.byte 0x1 @ 0xafe
.byte 0x0 @ 0xaff
.byte 0xfe @ 0xb00
.byte 0x0 @ 0xb01
.byte 0x0 @ 0xb02
.byte 0x0 @ 0xb03
.byte 0xc @ 0xb04
.byte 0x0 @ 0xb05
.byte 0x1 @ 0xb06
.byte 0x0 @ 0xb07
.byte 0xfe @ 0xb08
.byte 0x0 @ 0xb09
.byte 0x0 @ 0xb0a
.byte 0x0 @ 0xb0b
.byte 0xe @ 0xb0c
.byte 0x0 @ 0xb0d
.byte 0x1 @ 0xb0e
.byte 0x0 @ 0xb0f
.byte 0xfe @ 0xb10
.byte 0x0 @ 0xb11
.byte 0x0 @ 0xb12
.byte 0x0 @ 0xb13
.byte 0xe @ 0xb14
.byte 0x0 @ 0xb15
.byte 0x1 @ 0xb16
.byte 0x0 @ 0xb17
.byte 0xfe @ 0xb18
.byte 0x0 @ 0xb19
.byte 0x0 @ 0xb1a
.byte 0x0 @ 0xb1b
.byte 0xe @ 0xb1c
.byte 0x0 @ 0xb1d
.byte 0x1 @ 0xb1e
.byte 0x0 @ 0xb1f
.byte 0xfe @ 0xb20
.byte 0x0 @ 0xb21
.byte 0x0 @ 0xb22
.byte 0x0 @ 0xb23

Script_5: @ b24
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x355
	CompareLastResultJump EQUAL, Script_branch_b55
	If 0x8005, 0x356
	CompareLastResultJump EQUAL, Script_branch_b89
	If 0x8005, 0x357
	CompareLastResultJump EQUAL, Script_branch_bbb
	End
@ b55

Script_branch_b55: @ b55
	ApplyMovement 0xfe, Movement_dbc
	ApplyMovement 0x5, Movement_d48
	WaitMovement
	SetVariableRival 0x0
	Message 0x35
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_d50
	ApplyMovement 0x6, Movement_d80
	WaitMovement
	Jump Script_branch_bf5
@ b87

.byte 0x2 @ 0xb87
.byte 0x0 @ 0xb88

Script_branch_b89: @ b89
	ApplyMovement 0xfe, Movement_dbc
	ApplyMovement 0x5, Movement_d48
	WaitMovement
	SetVariableRival 0x0
	Message 0x35
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_d5c
	ApplyMovement 0x6, Movement_d80
	WaitMovement
	Jump Script_branch_bf5
@ bbb

Script_branch_bbb: @ bbb
	ApplyMovement 0xff, Movement_ddc
	ApplyMovement 0xfe, Movement_dcc
	ApplyMovement 0x5, Movement_d48
	WaitMovement
	SetVariableRival 0x0
	Message 0x35
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_d5c
	ApplyMovement 0x6, Movement_d80
	WaitMovement
	Jump Script_branch_bf5
@ bf5

Script_branch_bf5: @ bf5
	SetVarAlter 0x0
	SetVarStrHero 0x1
	SetVarStrRival 0x2
	ApplyMovement 0x5, Movement_d70
	WaitMovement
	If 0x8005, 0x355
	CompareLastResultJump EQUAL, Script_branch_c3e
	If 0x8005, 0x356
	CompareLastResultJump EQUAL, Script_branch_c56
	If 0x8005, 0x357
	CompareLastResultJump EQUAL, Script_branch_c6e
	If 0x8005, 0x358
	CompareLastResultJump EQUAL, Script_branch_c6e
	End
@ c3e

Script_branch_c3e: @ c3e
	ApplyMovement 0x5, Movement_d78
	ApplyMovement 0x6, Movement_d94
	WaitMovement
	Jump Script_branch_c86
@ c56

Script_branch_c56: @ c56
	ApplyMovement 0x5, Movement_d78
	ApplyMovement 0x6, Movement_da0
	WaitMovement
	Jump Script_branch_c86
@ c6e

Script_branch_c6e: @ c6e
	ApplyMovement 0x5, Movement_d78
	ApplyMovement 0x6, Movement_da0
	WaitMovement
	Jump Script_branch_c86
@ c86

Script_branch_c86: @ c86
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c9d
	Jump Script_branch_ca3
@ c9d

Script_branch_c9d: @ c9d
	Jump Script_branch_ca9
@ ca3

Script_branch_ca3: @ ca3
	Jump Script_branch_ca9
@ ca9

Script_branch_ca9: @ ca9
	CloseMsgOnKeyPress
	If 0x8005, 0x355
	CompareLastResultJump EQUAL, Script_branch_ce1
	If 0x8005, 0x356
	CompareLastResultJump EQUAL, Script_branch_ce1
	If 0x8005, 0x357
	CompareLastResultJump EQUAL, Script_branch_ce1
	If 0x8005, 0x358
	CompareLastResultJump EQUAL, Script_branch_ce1
	End
@ ce1

Script_branch_ce1: @ ce1
	ApplyMovement 0x6, Movement_db4
	WaitMovement
	Jump Script_branch_cf1
@ cf1

Script_branch_cf1: @ cf1
	RemovePeople 0x6
	RemovePeople 0x5
	SetVar 0x4086, 0x3
	ContinueFollow 0xfe, 0x0
	StopFollow
	SetFlag 0x172
	SetFlag 0x195
	SetVar 0x4082, 0x4
	SetFlag 0x196
	Return2 0x1e, 0x800c
	FadeScreen 0x6, 0x3, 0x0, 0x0
	ResetScreen
	Warp 0x19e, 0x0, 0x2, 0x6, 0x0
	FadeScreen 0x6, 0x3, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ d46

.byte 0x0 @ 0xd46
.byte 0x0 @ 0xd47

Movement_d48: @ d48
	MoveLeftFast 0x1
	EndMovement 0x0
@ d50

Movement_d50: @ d50
	Move_3f 0x4
	WalkLeftFast 0x2
	EndMovement 0x0
@ d5c

Movement_d5c: @ d5c
	Move_3f 0x4
	WalkLeftFast 0x1
	WalkDownFast 0x1
	WalkLeftFast 0x1
	EndMovement 0x0
@ d70

Movement_d70: @ d70
	MoveRightFast 0x1
	EndMovement 0x0
@ d78

Movement_d78: @ d78
	WalkRightFast 0x8
	EndMovement 0x0
@ d80

Movement_d80: @ d80
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ d8c

.byte 0x22 @ 0xd8c
.byte 0x0 @ 0xd8d
.byte 0x1 @ 0xd8e
.byte 0x0 @ 0xd8f
.byte 0xfe @ 0xd90
.byte 0x0 @ 0xd91
.byte 0x0 @ 0xd92
.byte 0x0 @ 0xd93

Movement_d94: @ d94
	Move_3f 0x3
	MoveRightFast 0x1
	EndMovement 0x0
@ da0

Movement_da0: @ da0
	Move_3e 0x1
	WalkUpFast 0x1
	MoveDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ db4

Movement_db4: @ db4
	WalkRightVeryFast 0x8
	EndMovement 0x0
@ dbc

Movement_dbc: @ dbc
	MoveRightFast 0x1
	Exclamation 0x1
	Move_41 0x1
	EndMovement 0x0
@ dcc

Movement_dcc: @ dcc
	WalkUpFast 0x1
	MoveRightFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ ddc

Movement_ddc: @ ddc
	Move_3f 0x1
	MoveLeftFast 0x1
	Move_3f 0x1
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ df4

Script_9: @ df4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x36
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e07

Script_11: @ e07
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x39
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e1a

Script_12: @ e1a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x90
	CompareLastResultJump EQUAL, Script_branch_e3e
	Message 0x3a
	Jump Script_branch_e36
@ e36

Script_branch_e36: @ e36
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e3e

Script_branch_e3e: @ e3e
	Message 0x3b
	Jump Script_branch_e36
@ e47

Script_10: @ e47
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x6c
	CompareLastResultJump EQUAL, Script_branch_e8c
	Message 0x37
	SetVar 0x8004, 0x11
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e97
	SetFlag 0x6c
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e8c

Script_branch_e8c: @ e8c
	Message 0x38
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e97

Script_branch_e97: @ e97
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ea1

Script_15: @ ea1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ eb4

Script_16: @ eb4
	LockAll
	ApplyMovement 0x2, Movement_664
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x32
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x6e
	CompareLastResultJump EQUAL, Script_branch_f07
	If 0x8004, 0x6f
	CompareLastResultJump EQUAL, Script_branch_f19
	If 0x8004, 0x70
	CompareLastResultJump EQUAL, Script_branch_f2b
	If 0x8004, 0x71
	CompareLastResultJump EQUAL, Script_branch_f3d
	End
@ f07

Script_branch_f07: @ f07
	ApplyMovement 0x2, Movement_670
	WaitMovement
	Jump Script_branch_f4f
@ f17

.byte 0x2 @ 0xf17
.byte 0x0 @ 0xf18

Script_branch_f19: @ f19
	ApplyMovement 0x2, Movement_680
	WaitMovement
	Jump Script_branch_f4f
@ f29

.byte 0x2 @ 0xf29
.byte 0x0 @ 0xf2a

Script_branch_f2b: @ f2b
	ApplyMovement 0x2, Movement_690
	WaitMovement
	Jump Script_branch_f4f
@ f3b

.byte 0x2 @ 0xf3b
.byte 0x0 @ 0xf3c

Script_branch_f3d: @ f3d
	ApplyMovement 0x2, Movement_698
	WaitMovement
	Jump Script_branch_f4f
@ f4d

.byte 0x2 @ 0xf4d
.byte 0x0 @ 0xf4e

Script_branch_f4f: @ f4f
	SetVariableRival 0x0
	Message 0x33
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x4086, 0x3
	Cmd_164
	StartFollow
	FollowHero 0x2, 0x30
	ContinueFollow 0x2, 0x1
	SetFlag 0x172
	ReleaseAll
	End
@ f76

Script_6: @ f76
	CallMessageBox 0x3c, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ f8d

Script_7: @ f8d
	CallMessageBox 0x3d, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ fa4

Script_8: @ fa4
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x3e, 0x800c
	CallStandard 0x7d0
	End
@ fb9

.byte 0x0 @ 0xfb9
.byte 0x0 @ 0xfba
.byte 0x0 @ 0xfbb

@ end_0xfbc
