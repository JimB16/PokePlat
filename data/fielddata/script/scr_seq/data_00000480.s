.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x137
	CompareLastResultJump 0x1, Script_branch_114
	CheckFlag 0xaae
	CompareLastResultJump 0x1, Script_branch_16f
	SrtRandomNum 0x8000
	SetVariableNumber 0x0, 0x8000
	CheckPartyNumber 0x8002
	SetVar 0x8003, 0x0
Script_branch_3b: @ 3b
	CheckPokeLevel2 0x8001, 0x8003
	If2 0x8000, 0x8001
	CompareLastResultJump 0x1, Script_branch_6d
	SetValue 0x8003, 0x1
	CopyValue 0x8002, 0x1
	If 0x8002, 0x0
	CompareLastResultJump 0x5, Script_branch_3b
	Jump Script_branch_164
@ 6d

Script_branch_6d: @ 6d
	If 0x4108, 0x0
	CompareLastResultCall 0x1, Script_branch_ed
	If 0x4108, 0x1
	CompareLastResultCall 0x1, Script_branch_f5
	If 0x4108, 0x2
	CompareLastResultCall 0x1, Script_branch_fd
	SetVarPoke 0x1, 0x8003
	SetVarItem 0x2, 0x8004
	Message 0x1
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_105
	Jump Script_branch_c2
@ c2

Script_branch_c2: @ c2
	CallStandard 0x7e0
	ClearFlag 0x137
	SetFlag 0xaae
	SetValue 0x4108, 0x1
	If 0x4108, 0x3
	CompareLastResultJump 0x0, Script_branch_e7
	SetVar 0x4108, 0x0
Script_branch_e7: @ e7
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ed

Script_branch_ed: @ ed
	SetVar 0x8004, 0xf1
	Return
@ f5

Script_branch_f5: @ f5
	SetVar 0x8004, 0x10c
	Return
@ fd

Script_branch_fd: @ fd
	SetVar 0x8004, 0x113
	Return
@ 105

Script_branch_105: @ 105
	SetFlag 0x137
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 114

Script_branch_114: @ 114
	If 0x4108, 0x0
	CompareLastResultCall 0x1, Script_branch_ed
	If 0x4108, 0x1
	CompareLastResultCall 0x1, Script_branch_f5
	If 0x4108, 0x2
	CompareLastResultCall 0x1, Script_branch_fd
	SetVarItem 0x2, 0x8004
	Message 0x3
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_105
	Jump Script_branch_c2
@ 164

Script_branch_164: @ 164
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16f

Script_branch_16f: @ 16f
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17a

Script_2: @ 17a
	PlayFanfare 0x5dc
	LockAll
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18b

.byte 0x0 @ 0x18b

@ end_0x18c
