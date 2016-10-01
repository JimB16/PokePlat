.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_4: @ 12
	CheckRuinManiac 0x4000
	If 0x4000, 0x1a
	CompareLastResultJump 0x4, Script_branch_3f
	If 0x4000, 0xa
	CompareLastResultJump 0x4, Script_branch_51
	If 0x4000, 0xa
	CompareLastResultJump LESSER, Script_branch_63
	End
@ 3f

Script_branch_3f: @ 3f
	SetTilePassable 0x2, 0x2c6, 0x29e
	SetTilePassable 0x3, 0x2c6, 0x29e
	End
@ 51

Script_branch_51: @ 51
	SetTilePassable 0x2, 0x2c6, 0x29e
	SetTilePassable 0x4, 0x2c6, 0x29e
	End
@ 63

Script_branch_63: @ 63
	SetTilePassable 0x3, 0x2c6, 0x29e
	SetTilePassable 0x4, 0x2c6, 0x29e
	End
@ 75

Script_3: @ 75
	CheckRuinManiac 0x4000
	If 0x4000, 0x1a
	CompareLastResultJump 0x4, Script_branch_3f
	If 0x4000, 0xa
	CompareLastResultJump 0x4, Script_branch_51
	If 0x4000, 0xa
	CompareLastResultJump LESSER, Script_branch_63
	End
@ a2

Script_1: @ a2
	CallMessageBox 0x0, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ b9

Script_2: @ b9
	CallMessageBox 0x1, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ d0

@ end_0xd0
