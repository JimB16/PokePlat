.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFloor 0x40ce
	CopyVar 0x8008, 0x40ce
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_34
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_3e
	End
@ 34

Script_branch_34: @ 34
	DisplayFloor 0x0, 0x2
	Jump Script_branch_48
Script_branch_3e: @ 3e
	DisplayFloor 0x0, 0x1
	Jump Script_branch_48
Script_branch_48: @ 48
	StartLift 0x14, 0x1, 0x40ce, 0x40ce
	Message 0x0
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x75, 0x0
	Cmd_42 0x74, 0x1
	Cmd_42 0x7c, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_8f
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_ca
	Jump Script_branch_152
Script_branch_8f: @ 8f
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x1ce, 0x0, 0x12, 0x2, 0x1
	If 0x40ce, 0x0
	CompareLastResultJump EQUAL, Script_branch_164
	SetVar 0x8004, 0x0
	Call Function_105
	SetVar 0x40ce, 0x0
	Jump Script_branch_147
Script_branch_ca: @ ca
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x1cd, 0x1, 0x12, 0x2, 0x1
	If 0x40ce, 0x1
	CompareLastResultJump EQUAL, Script_branch_164
	SetVar 0x8004, 0x1
	Call Function_105
	SetVar 0x40ce, 0x1
	Jump Script_branch_147
Function_105: @ 105
	SetVar 0x40ce, 0xffff
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_13d
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_142
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_17c
	WaitMovement
	WaitFanfare 0x5dc
	StoreElevatorDirection 0x8004, 0x4
	Return
@ 13d

Script_branch_13d: @ 13d
	Message 0x2
	Return
@ 142

Script_branch_142: @ 142
	Message 0x1
	Return
@ 147

Script_branch_147: @ 147
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 152

Script_branch_152: @ 152
	SetVar 0x40ce, 0xffff
	Return2 0x1, 0x800c
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 164

Script_branch_164: @ 164
	SetVar 0x40ce, 0xffff
	Return2 0x1, 0x800c
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17b

.byte 0x0 @ 0x17b

Movement_17c: @ 17c
	MoveDownFast 0x1
	EndMovement 0x0
@ 184

@ end_0x184
