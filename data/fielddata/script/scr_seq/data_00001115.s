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
@ 5a

.byte 0x2 @ 0x5a
.byte 0x0 @ 0x5b

Script_branch_5c: @ 5c
	CheckFurniture 0x4, 0x8004, 0x8005
	CopyFurniture 0x8004, 0x8005
	WaitButton
	Jump Script_branch_129
@ 72

.byte 0x2 @ 0x72
.byte 0x0 @ 0x73

Script_branch_74: @ 74
	CheckFurniture 0x1, 0x2, 0x8004, 0x8005
	CopyFurniture 0x8004, 0x8005
	WaitButton
	CheckFurniture 0x2
	Jump Script_branch_129
@ 90

.byte 0x2 @ 0x90
.byte 0x0 @ 0x91

Script_branch_92: @ 92
	CheckFurniture 0x1, 0x0, 0x8004, 0x8005
	CopyFurniture 0x8004, 0x8005
	Jump Script_branch_aa
@ a8

.byte 0x2 @ 0xa8
.byte 0x0 @ 0xa9

Script_branch_aa: @ aa
	CheckFurniture 0x6, 0x8006
	If 0x8006, 0x0
	CompareLastResultJump 0x5, Script_branch_eb
	Jump Script_branch_c5
@ c3

.byte 0x2 @ 0xc3
.byte 0x0 @ 0xc4

Script_branch_c5: @ c5
	CheckFurniture 0x1, 0x3, 0x8004, 0x8005
	StoreFurniture 0x8004
	StoreFurniture 0x8005
	CopyFurniture 0x8004, 0x8005
	CheckFurniture 0x2
	WaitButton
	Jump Script_branch_129
@ e9

.byte 0x2 @ 0xe9
.byte 0x0 @ 0xea

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
@ 127

.byte 0x2 @ 0x127
.byte 0x0 @ 0x128

Script_branch_129: @ 129
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12f

.byte 0x0 @ 0x12f

@ end_0x130
