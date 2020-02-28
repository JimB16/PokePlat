.include "macros/script_seq.s"


Script_1: @ 0
	AddNewScript 279
Script_branch_8: @ 8
	Cmd_8e Script_branch_3bc
	Cmd_32 Store, 0x8, 0x14
	Cmd_26
	Cmd_f_CalcDamage
	Cmd_8f
	Cmd_32 Bic, 0x6, 0x1
	Cmd_32 Bic, 0x6, 0x4000
	Cmd_11
	Cmd_e
	JumpIf TstNe, 0xa, 0x1fd849, Script_branch_26c
	Cmd_17 0x1
	Cmd_e
	Cmd_d2 0x2, Script_branch_1b4
	Cmd_39 0x7, 0x2b, 0xe
	Cmd_32 0xc, 0x2b, 0xffffffff
	Cmd_4f 0x3, Var_MoveEffect_SubSeq, 0x2f, 0x2b, Script_branch_d0
	Cmd_39 0x7, 0x44, 0xe
	Jump Script_branch_f4
@ d0

Script_branch_d0: @ d0
	Cmd_3a 0x11, 0x2, 0x2f, 0x44
	Cmd_32 0xc, 0x44, 0xffffffff
Script_branch_f4: @ f4
	Cmd_39 0x7, 0x20, 0xe
	Cmd_39 0x7, 0x41, 0xe
	Cmd_39 0x7, 0x14, 0x10
	Cmd_d0 0xff
	AddNewScript 2
	AddNewScript 16
	AddNewScript 21
	JumpIfPkmnBattleData Eq, 0x2, 0x2f, 0x0, Script_branch_29c
	Cmd_c5 Script_branch_16c
	Cmd_3d 0x2b
Script_branch_16c: @ 16c
	Cmd_cc Script_branch_17c
	Cmd_3d 0x2b
Script_branch_17c: @ 17c
	Cmd_32 Orr, 0x6, 0x2000
	Cmd_d5 Script_branch_19c
	Cmd_3d 0x2b
Script_branch_19c: @ 19c
	Cmd_32 Bic, 0x6, 0x2000
	Jump Script_branch_27c
@ 1b4

Script_branch_1b4: @ 1b4
	Cmd_39 0x7, 0x2b, 0xe
	Cmd_32 0xc, 0x2b, 0xffffffff
	Cmd_4f 0x3, Var_MoveEffect_SubSeq, 0x5a, 0x2b, Script_branch_204
	Cmd_39 0x7, 0x44, 0xe
	Jump Script_branch_23c
@ 204

Script_branch_204: @ 204
	ChangePkmnBattleData 0xb, 0x2, 0x35, 0x1000000
	Cmd_3a 0x11, 0x2, 0x5a, 0x44
	Cmd_32 0xc, 0x44, 0xffffffff
Script_branch_23c: @ 23c
	Cmd_39 0x7, 0x14, 0x10
	AddNewScript 90
	AddNewScript 16
	AddNewScript 21
	Jump Script_branch_27c
@ 26c

Script_branch_26c: @ 26c
	Cmd_1e 0xf
	AddNewScript 7
Script_branch_27c: @ 27c
	AddNewScript 280
	Cmd_39 0x11, 0x1c, 0x18
	Jump Script_branch_8
@ 29c

Script_branch_29c: @ 29c
	AddNewScript 83
	Cmd_c5 Script_branch_2b4
	Cmd_3d 0x2b
Script_branch_2b4: @ 2b4
	Cmd_cc Script_branch_2c4
	Cmd_3d 0x2b
Script_branch_2c4: @ 2c4
	Cmd_32 Orr, 0x6, 0x2000
	Cmd_d5 Script_branch_2e4
	Cmd_3d 0x2b
Script_branch_2e4: @ 2e4
	Cmd_32 Bic, 0x6, 0x2000
	Cmd_39 0x7, 0x2b, 0x12
	Cmd_32 Store, 0x12, 0x0
	Cmd_39 0x7, 0x9, 0x3c
	Cmd_32 0xf, 0x9, 0x1c
	Cmd_32 Bic, 0x3c, 0xf0000000
Script_branch_344: @ 344
	JumpIf TstEq, 0x9, 0x1, Script_branch_360
	AddNewScript 276
Script_branch_360: @ 360
	Cmd_32 Add, 0x12, 0x1
	Cmd_32 0xf, 0x9, 0x1
	JumpIf Ne, 0x9, 0x0, Script_branch_344
	Cmd_39 0x12, 0x7, 0x2b
	AddNewScript 280
	Cmd_39 0x11, 0x1c, 0x18
Script_branch_3bc: @ 3bc
	end
@ 0x3c0
@ 3c0

