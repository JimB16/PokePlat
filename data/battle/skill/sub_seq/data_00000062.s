.include "macros/script_seq.s"


Script_1: @ 0
	AddNewScript 76
	ChangePkmnBattleData 0xa, 0x7, 0x35, 0x100000
	Cmd_12 0x114, 0x2, 0x7
	Cmd_e
	Cmd_1e 0x1e
	end
@ 0x3c
@ 3c

