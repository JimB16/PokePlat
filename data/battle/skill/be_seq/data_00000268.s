.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_a6 0x0, 0x1, 0x83, Script_branch_148
	Cmd_a6 0x0, 0x1, 0x86, Script_branch_160
	Cmd_a6 0x0, 0x1, 0x84, Script_branch_178
	Cmd_a6 0x0, 0x1, 0x85, Script_branch_190
	Cmd_a6 0x0, 0x1, 0x89, Script_branch_1a8
	Cmd_a6 0x0, 0x1, 0x88, Script_branch_1c0
	Cmd_a6 0x0, 0x1, 0x8a, Script_branch_1d8
	Cmd_a6 0x0, 0x1, 0x8d, Script_branch_1f0
	Cmd_a6 0x0, 0x1, 0x7e, Script_branch_208
	Cmd_a6 0x0, 0x1, 0x7f, Script_branch_220
	Cmd_a6 0x0, 0x1, 0x81, Script_branch_238
	Cmd_a6 0x0, 0x1, 0x80, Script_branch_250
	Cmd_a6 0x0, 0x1, 0x87, Script_branch_268
	Cmd_a6 0x0, 0x1, 0x82, Script_branch_280
	Cmd_a6 0x0, 0x1, 0x8b, Script_branch_298
	Cmd_a6 0x0, 0x1, 0x8c, Script_branch_2b0
	Jump Script_branch_2c0
@ 148

Script_branch_148: @ 148
	Cmd_32 Store, 0x39, 0x1
	Jump Script_branch_2c0
@ 160

Script_branch_160: @ 160
	Cmd_32 Store, 0x39, 0x2
	Jump Script_branch_2c0
@ 178

Script_branch_178: @ 178
	Cmd_32 Store, 0x39, 0x3
	Jump Script_branch_2c0
@ 190

Script_branch_190: @ 190
	Cmd_32 Store, 0x39, 0x4
	Jump Script_branch_2c0
@ 1a8

Script_branch_1a8: @ 1a8
	Cmd_32 Store, 0x39, 0x5
	Jump Script_branch_2c0
@ 1c0

Script_branch_1c0: @ 1c0
	Cmd_32 Store, 0x39, 0x6
	Jump Script_branch_2c0
@ 1d8

Script_branch_1d8: @ 1d8
	Cmd_32 Store, 0x39, 0x7
	Jump Script_branch_2c0
@ 1f0

Script_branch_1f0: @ 1f0
	Cmd_32 Store, 0x39, 0x8
	Jump Script_branch_2c0
@ 208

Script_branch_208: @ 208
	Cmd_32 Store, 0x39, 0xa
	Jump Script_branch_2c0
@ 220

Script_branch_220: @ 220
	Cmd_32 Store, 0x39, 0xb
	Jump Script_branch_2c0
@ 238

Script_branch_238: @ 238
	Cmd_32 Store, 0x39, 0xc
	Jump Script_branch_2c0
@ 250

Script_branch_250: @ 250
	Cmd_32 Store, 0x39, 0xd
	Jump Script_branch_2c0
@ 268

Script_branch_268: @ 268
	Cmd_32 Store, 0x39, 0xe
	Jump Script_branch_2c0
@ 280

Script_branch_280: @ 280
	Cmd_32 Store, 0x39, 0xf
	Jump Script_branch_2c0
@ 298

Script_branch_298: @ 298
	Cmd_32 Store, 0x39, 0x10
	Jump Script_branch_2c0
@ 2b0

Script_branch_2b0: @ 2b0
	Cmd_32 Store, 0x39, 0x11
Script_branch_2c0: @ 2c0
	Cmd_26
	Cmd_f_CalcDamage
	end
@ 0x2cc
@ 2cc

