.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_3: @ 12
	If 0x406b, 0x122
	CompareLastResultCall 0x5, Script_branch_3f
	Cmd_32b 0x4001
	If 0x4001, 0x0
	CompareLastResultJump 0x1, Script_branch_67
	If 0x4001, 0x1
	CompareLastResultJump 0x1, Script_branch_71
	End
@ 3f

Script_branch_3f: @ 3f
	SetVar 0x406b, 0x0
	Return
@ 47

Script_4: @ 47
	Cmd_32b 0x4001
	If 0x4001, 0x0
	CompareLastResultJump 0x1, Script_branch_67
	If 0x4001, 0x1
	CompareLastResultJump 0x1, Script_branch_71
	End
@ 67

Script_branch_67: @ 67
	SetTilePassable 0x5, 0x30f, 0x153
	End
@ 71

Script_branch_71: @ 71
	SetTilePassable 0x4, 0x30f, 0x153
	End
@ 7b

Script_1: @ 7b
	CallMessageBox 0x0, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 92

Script_2: @ 92
	CallMessageBox 0x1, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ a9

.byte 0x0 @ 0xa9
.byte 0x0 @ 0xaa
.byte 0x0 @ 0xab

@ end_0xac
