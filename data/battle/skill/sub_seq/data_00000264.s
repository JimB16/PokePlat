.include "macros/script_seq.s"


Script_1: @ 0
	JumpIf TstNe, 0x6, 0x8800, Script_branch_41c
	JumpIf TstNe, 0xa, 0x20, Script_branch_41c
	Cmd_37 0x1, 0x1, 0x60, Script_branch_54
	Cmd_32 Store, 0x9, 0x0
	Jump Script_branch_88
@ 54

Script_branch_54: @ 54
	JumpIf Eq, 0x39, 0x0, Script_branch_80
	Cmd_39 0x11, 0x39, 0x9
	Jump Script_branch_88
@ 80

Script_branch_80: @ 80
	LoadMoveData 0x3
Script_branch_88: @ 88
	Cmd_a7 0xff, 0x2b
	JumpIf Eq, 0x2b, 0x23, Script_branch_204
	JumpIf TstEq, 0xa, 0x2, Script_branch_41c
	JumpIf Eq, 0x2b, 0x13, Script_branch_220
	JumpIf Eq, 0x2b, 0x14, Script_branch_23c
	JumpIf Eq, 0x2b, 0x15, Script_branch_258
	JumpIf Eq, 0x2b, 0x16, Script_branch_274
	JumpIf Eq, 0x2b, 0x17, Script_branch_290
	JumpIf Eq, 0x2b, 0x18, Script_branch_2ac
	JumpIf Eq, 0x2b, 0x19, Script_branch_2c8
	JumpIf Eq, 0x2b, 0x1a, Script_branch_2e4
	JumpIf Eq, 0x2b, 0x1b, Script_branch_300
	JumpIf Eq, 0x2b, 0x1c, Script_branch_31c
	JumpIf Eq, 0x2b, 0x1d, Script_branch_338
	JumpIf Eq, 0x2b, 0x1e, Script_branch_354
	JumpIf Eq, 0x2b, 0x1f, Script_branch_370
	JumpIf Eq, 0x2b, 0x20, Script_branch_38c
	JumpIf Eq, 0x2b, 0x21, Script_branch_3a8
	JumpIf Eq, 0x2b, 0x22, Script_branch_3c4
	Jump Script_branch_41c
@ 204

Script_branch_204: @ 204
	JumpIf Eq, 0x9, 0x0, Script_branch_3d8
	Jump Script_branch_41c
@ 220

Script_branch_220: @ 220
	JumpIf Eq, 0x9, 0xa, Script_branch_3d8
	Jump Script_branch_41c
@ 23c

Script_branch_23c: @ 23c
	JumpIf Eq, 0x9, 0xb, Script_branch_3d8
	Jump Script_branch_41c
@ 258

Script_branch_258: @ 258
	JumpIf Eq, 0x9, 0xd, Script_branch_3d8
	Jump Script_branch_41c
@ 274

Script_branch_274: @ 274
	JumpIf Eq, 0x9, 0xc, Script_branch_3d8
	Jump Script_branch_41c
@ 290

Script_branch_290: @ 290
	JumpIf Eq, 0x9, 0xf, Script_branch_3d8
	Jump Script_branch_41c
@ 2ac

Script_branch_2ac: @ 2ac
	JumpIf Eq, 0x9, 0x1, Script_branch_3d8
	Jump Script_branch_41c
@ 2c8

Script_branch_2c8: @ 2c8
	JumpIf Eq, 0x9, 0x3, Script_branch_3d8
	Jump Script_branch_41c
@ 2e4

Script_branch_2e4: @ 2e4
	JumpIf Eq, 0x9, 0x4, Script_branch_3d8
	Jump Script_branch_41c
@ 300

Script_branch_300: @ 300
	JumpIf Eq, 0x9, 0x2, Script_branch_3d8
	Jump Script_branch_41c
@ 31c

Script_branch_31c: @ 31c
	JumpIf Eq, 0x9, 0xe, Script_branch_3d8
	Jump Script_branch_41c
@ 338

Script_branch_338: @ 338
	JumpIf Eq, 0x9, 0x6, Script_branch_3d8
	Jump Script_branch_41c
@ 354

Script_branch_354: @ 354
	JumpIf Eq, 0x9, 0x5, Script_branch_3d8
	Jump Script_branch_41c
@ 370

Script_branch_370: @ 370
	JumpIf Eq, 0x9, 0x7, Script_branch_3d8
	Jump Script_branch_41c
@ 38c

Script_branch_38c: @ 38c
	JumpIf Eq, 0x9, 0x10, Script_branch_3d8
	Jump Script_branch_41c
@ 3a8

Script_branch_3a8: @ 3a8
	JumpIf Eq, 0x9, 0x11, Script_branch_3d8
	Jump Script_branch_41c
@ 3c4

Script_branch_3c4: @ 3c4
	JumpIf Ne, 0x9, 0x8, Script_branch_41c
Script_branch_3d8: @ 3d8
	Cmd_45 0xff, 0xa
	Cmd_e
	Cmd_55 0x20, 0x2
	Cmd_12 0x46b, 0x18, 0x15, 0x1
	Cmd_e
	Cmd_1e 0x1e
	Cmd_ca 0xff
Script_branch_41c: @ 41c
	end
@ 0x420
@ 420

