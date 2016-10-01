.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x1
	CompareLastResultJump EQUAL, Script_branch_d3
	CheckSinnohPokedex 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_4c
	CheckFlag 0xab
	CompareLastResultJump LESSER, Script_branch_57
	CheckNationalPokedex 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_57
	Jump Script_branch_95
Script_branch_4c: @ 4c
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

Script_branch_57: @ 57
	CheckFlag 0xab
	CompareLastResultCall LESSER, Script_branch_de
	SetFlag 0xab
	SetFlag 0x1
	Message 0x1
	Soundfr 0x486
	Cmd_4f
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ShowSinnohSheet
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 95

Script_branch_95: @ 95
	CheckFlag 0xac
	CompareLastResultCall LESSER, Script_branch_e4
	SetFlag 0xac
	SetFlag 0x1
	Message 0x2
	Soundfr 0x486
	Cmd_4f
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ShowNationalSheet
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ d3

Script_branch_d3: @ d3
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ de

Script_branch_de: @ de
	MainEvent 0x1a
	Return
@ e4

Script_branch_e4: @ e4
	MainEvent 0x1b
	Return
@ ea

.byte 0x0 @ 0xea
.byte 0x0 @ 0xeb

@ end_0xec
