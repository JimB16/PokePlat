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
	script Script_22
	script Script_23
	.hword 0xfd13
@ 5e

Script_1: @ 5e
	Cmd_20e
	End
@ 62

Script_2: @ 62
	LockAll
	PlayFanfare 0x5f1
	Message 0x0
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x7d, 0x0, 0x5, 0x2, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x40da, 0x2
	GreatMarshFunction 0x1
	ReleaseAll
	End
@ a0

Script_10: @ a0
	LockAll
	SetVar 0x40da, 0x2
	GreatMarshFunction 0x1
	ReleaseAll
	End
@ af

Script_3: @ af
	LockAll
	PlayFanfare 0x5f1
	Message 0x1
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x7d, 0x0, 0x5, 0x2, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x40da, 0x2
	GreatMarshFunction 0x1
	ReleaseAll
	End
@ ed

Script_23: @ ed
	LockAll
	PlayFanfare 0x5f1
	Message 0x2
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x7d, 0x0, 0x5, 0x2, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x40da, 0x2
	GreatMarshFunction 0x1
	ReleaseAll
	End
@ 12b

Script_22: @ 12b
	LockAll
	Message 0x5
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_174
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x7d, 0x0, 0x5, 0x2, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x40da, 0x2
	GreatMarshFunction 0x1
	ReleaseAll
	End
@ 174

Script_branch_174: @ 174
	ReleaseAll
	End
@ 178

Script_4: @ 178
	LockAll
	Message 0x3
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xbc, 0x0
	Cmd_42 0xbd, 0x1
	Cmd_42 0xbe, 0x2
	Cmd_42 0xbf, 0x3
	Cmd_42 0xc0, 0x4
	CloseMulti
	CloseMsgOnKeyPress
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_6c2
	If 0x800c, 0xfffe
	CompareLastResultJump 0x1, Script_branch_6c2
	SetvarQuickTrainCoordinates 0x0, 0x8004
	SetVar 0x8005, 0x0
	If 0x8004, 0x6
	CompareLastResultCall 0x1, Script_branch_634
	MoveTrainAnm 0x0
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_6d0
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_6dc
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6d0
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6dc
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_68a
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_698
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6a6
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6b4
	MoveTrainAnm 0x1
	ReleaseAll
	End
@ 242

Script_5: @ 242
	LockAll
	Message 0x3
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xbc, 0x0
	Cmd_42 0xbd, 0x1
	Cmd_42 0xbe, 0x2
	Cmd_42 0xbf, 0x3
	Cmd_42 0xc0, 0x4
	CloseMulti
	CloseMsgOnKeyPress
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_6c2
	If 0x800c, 0xfffe
	CompareLastResultJump 0x1, Script_branch_6c2
	SetvarQuickTrainCoordinates 0x0, 0x8004
	SetVar 0x8005, 0x0
	If 0x8004, 0x6
	CompareLastResultCall 0x1, Script_branch_634
	MoveTrainAnm 0x0
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_6f4
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_6e8
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6f4
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6e8
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_68a
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_698
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6a6
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6b4
	MoveTrainAnm 0x1
	ReleaseAll
	End
@ 30c

Script_6: @ 30c
	LockAll
	Message 0x3
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xba, 0x0
	Cmd_42 0xbb, 0x1
	Cmd_42 0xbe, 0x2
	Cmd_42 0xbf, 0x3
	Cmd_42 0xc0, 0x4
	CloseMulti
	CloseMsgOnKeyPress
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_6c2
	If 0x800c, 0xfffe
	CompareLastResultJump 0x1, Script_branch_6c2
	SetvarQuickTrainCoordinates 0x1, 0x8004
	SetVar 0x8005, 0x1
	If 0x8004, 0x6
	CompareLastResultCall 0x1, Script_branch_634
	MoveTrainAnm 0x0
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_6d0
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_6dc
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6d0
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6dc
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_66e
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_67c
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6a6
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6b4
	MoveTrainAnm 0x1
	ReleaseAll
	End
@ 3d6

Script_7: @ 3d6
	LockAll
	Message 0x3
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xba, 0x0
	Cmd_42 0xbb, 0x1
	Cmd_42 0xbe, 0x2
	Cmd_42 0xbf, 0x3
	Cmd_42 0xc0, 0x4
	CloseMulti
	CloseMsgOnKeyPress
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_6c2
	If 0x800c, 0xfffe
	CompareLastResultJump 0x1, Script_branch_6c2
	SetvarQuickTrainCoordinates 0x1, 0x8004
	SetVar 0x8005, 0x1
	If 0x8004, 0x6
	CompareLastResultCall 0x1, Script_branch_634
	MoveTrainAnm 0x0
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_6f4
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_6e8
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6f4
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6e8
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_66e
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_67c
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6a6
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6b4
	MoveTrainAnm 0x1
	ReleaseAll
	End
@ 4a0

Script_8: @ 4a0
	LockAll
	Message 0x3
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xba, 0x0
	Cmd_42 0xbb, 0x1
	Cmd_42 0xbc, 0x2
	Cmd_42 0xbd, 0x3
	Cmd_42 0xc0, 0x4
	CloseMulti
	CloseMsgOnKeyPress
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_6c2
	If 0x800c, 0xfffe
	CompareLastResultJump 0x1, Script_branch_6c2
	SetvarQuickTrainCoordinates 0x2, 0x8004
	SetVar 0x8005, 0x2
	If 0x8004, 0x6
	CompareLastResultCall 0x1, Script_branch_634
	MoveTrainAnm 0x0
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_6d0
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_6dc
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6d0
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6dc
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_66e
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_67c
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_68a
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_698
	MoveTrainAnm 0x1
	ReleaseAll
	End
@ 56a

Script_9: @ 56a
	LockAll
	Message 0x3
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xba, 0x0
	Cmd_42 0xbb, 0x1
	Cmd_42 0xbc, 0x2
	Cmd_42 0xbd, 0x3
	Cmd_42 0xc0, 0x4
	CloseMulti
	CloseMsgOnKeyPress
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_6c2
	If 0x800c, 0xfffe
	CompareLastResultJump 0x1, Script_branch_6c2
	SetvarQuickTrainCoordinates 0x2, 0x8004
	SetVar 0x8005, 0x2
	If 0x8004, 0x6
	CompareLastResultCall 0x1, Script_branch_634
	MoveTrainAnm 0x0
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_6f4
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_6e8
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_6f4
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_6e8
	If 0x800c, 0x0
	CompareLastResultCall 0x1, Script_branch_66e
	If 0x800c, 0x1
	CompareLastResultCall 0x1, Script_branch_67c
	If 0x800c, 0x2
	CompareLastResultCall 0x1, Script_branch_68a
	If 0x800c, 0x3
	CompareLastResultCall 0x1, Script_branch_698
	MoveTrainAnm 0x1
	ReleaseAll
	End
@ 634

Script_11: @ 634
Script_branch_634: @ 634
	CheckQuicTrineCoordinates 0x8005, 0x3
	Return
@ 63c

Function_63c: @ 63c
Script_12: @ 63c
	CheckQuicTrineCoordinates 0x8006, 0x4
	Return
@ 644

Function_644: @ 644
Script_13: @ 644
	SetVar 0x8006, 0x0
	Call Function_63c
	Return
@ 652

Function_652: @ 652
Script_14: @ 652
	SetVar 0x8006, 0x1
	Call Function_63c
	Return
@ 660

Function_660: @ 660
Script_15: @ 660
	SetVar 0x8006, 0x2
	Call Function_63c
	Return
@ 66e

Script_16: @ 66e
Script_branch_66e: @ 66e
	Call Function_644
	Call Function_70c
	Return
@ 67c

Script_17: @ 67c
Script_branch_67c: @ 67c
	Call Function_644
	Call Function_700
	Return
@ 68a

Script_18: @ 68a
Script_branch_68a: @ 68a
	Call Function_652
	Call Function_70c
	Return
@ 698

Script_19: @ 698
Script_branch_698: @ 698
	Call Function_652
	Call Function_700
	Return
@ 6a6

Script_20: @ 6a6
Script_branch_6a6: @ 6a6
	Call Function_660
	Call Function_70c
	Return
@ 6b4

Script_21: @ 6b4
Script_branch_6b4: @ 6b4
	Call Function_660
	Call Function_700
	Return
@ 6c2

Script_branch_6c2: @ 6c2
	SetVarHero 0x0
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6d0

Script_branch_6d0: @ 6d0
	ApplyMovement 0xff, Movement_718
	WaitMovement
	Return
@ 6dc

Script_branch_6dc: @ 6dc
	ApplyMovement 0xff, Movement_724
	WaitMovement
	Return
@ 6e8

Script_branch_6e8: @ 6e8
	ApplyMovement 0xff, Movement_730
	WaitMovement
	Return
@ 6f4

Script_branch_6f4: @ 6f4
	ApplyMovement 0xff, Movement_73c
	WaitMovement
	Return
@ 700

Function_700: @ 700
	ApplyMovement 0xff, Movement_748
	WaitMovement
	Return
@ 70c

Function_70c: @ 70c
	ApplyMovement 0xff, Movement_754
	WaitMovement
	Return
@ 718

Movement_718: @ 718
	WalkRightFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 724

Movement_724: @ 724
	WalkRightFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 730

Movement_730: @ 730
	WalkLeftFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 73c

Movement_73c: @ 73c
	WalkLeftFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 748

Movement_748: @ 748
	Move_46 0x1
	WalkRightFast 0x3
	EndMovement 0x0
@ 754

Movement_754: @ 754
	Move_46 0x1
	WalkLeftFast 0x3
	EndMovement 0x0
@ 760

@ end_0x760
