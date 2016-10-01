.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	RandomEvent 0x30
	CheckFurniture 0x0, 0x800c
	StoreFurniture 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_74
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_92
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_aa
	Jump Script_branch_5c
	End
@ 5c

Script_branch_5c: @ 5c
	CheckFurniture 0x4, 0x8004, 0x8005
	CopyFurniture 0x8004, 0x8005
	WaitButton
	Jump Script_branch_129
	End
@ 74

Script_branch_74: @ 74
	CheckFurniture 0x1, 0x2, 0x8004, 0x8005
	CopyFurniture 0x8004, 0x8005
	WaitButton
	CheckFurniture 0x2
	Jump Script_branch_129
	End
@ 92

Script_branch_92: @ 92
	CheckFurniture 0x1, 0x0, 0x8004, 0x8005
	CopyFurniture 0x8004, 0x8005
	Jump Script_branch_aa
	End
@ aa

Script_branch_aa: @ aa
	CheckFurniture 0x6, 0x8006
	If 0x8006, 0x0
	CompareLastResultJump 0x5, Script_branch_eb
	Jump Script_branch_c5
	End
@ c5

Script_branch_c5: @ c5
	CheckFurniture 0x1, 0x3, 0x8004, 0x8005
	StoreFurniture 0x8004
	StoreFurniture 0x8005
	CopyFurniture 0x8004, 0x8005
	CheckFurniture 0x2
	WaitButton
	Jump Script_branch_129
	End
@ eb

Script_branch_eb: @ eb
	CheckFurniture 0x1, 0x1, 0x8004, 0x8005
	StoreFurniture 0x8004
	StoreFurniture 0x8005
	CopyFurniture 0x8004, 0x8005
	CheckFurniture 0x3, 0x8006, 0x8004, 0x8005
	StoreFurniture 0x8006
	StoreFurniture 0x8004
	StoreFurniture 0x8005
	CopyFurniture 0x8004, 0x8005
	WaitButton
	Jump Script_branch_129
	End
@ 129

Script_branch_129: @ 129
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12f

.byte 0x0 @ 0x12f

@ end_0x130
