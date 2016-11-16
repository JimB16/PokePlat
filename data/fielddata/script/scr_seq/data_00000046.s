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
	CompareLastResultJump EQUAL, Script_branch_26
	Message 0x0
	SetFlag 0x1
	Jump Script_branch_26
@ 26

Script_branch_26: @ 26
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_49
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_130
	End
@ 49

Script_branch_49: @ 49
	Message 0x2
	CloseMsgOnKeyPress
	Jump Script_branch_54
@ 54

Script_branch_54: @ 54
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8002
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8002, 0xff
	CompareLastResultJump EQUAL, Script_branch_130
	CheckPokeEgg 0x8002, 0x8001
	If 0x8001, 0x0
	CompareLastResultJump EQUAL, Script_branch_11a
	CheckMoveNumDelete 0x800c, 0x8002
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_125
	Message 0x6
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StorePokeDelete 0x8002
	StoreMoveDelete 0x8001
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8001, 0xff
	CompareLastResultJump EQUAL, Script_branch_49
	SetvarMoveDelete 0x0, 0x8002, 0x8001
	Message 0x7
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_105
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_49
	End
@ 105

Script_branch_105: @ 105
	StoreDeleteMove 0x8002, 0x8001
	Message 0x8
	Soundfr 0x48d
	Cmd_4f
	WaitButton
	CloseMsgOnKeyPress
	End
@ 11a

Script_branch_11a: @ 11a
	Message 0x5
	CloseMsgOnKeyPress
	Jump Script_branch_54
@ 125

Script_branch_125: @ 125
	Message 0x4
	CloseMsgOnKeyPress
	Jump Script_branch_54
@ 130

Script_branch_130: @ 130
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13b

.byte 0x0 @ 0x13b

@ end_0x13c
