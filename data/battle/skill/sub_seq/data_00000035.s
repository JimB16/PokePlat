.include "macros/script_seq.s"


Script_1: @ 0
	AddNewScript 76
	Cmd_40 0x1
	ChangePkmnBattleData 0xa, 0x1, 0x35, 0x200
	Cmd_32 Store, 0x15, 0x0
	end
@ 0x38
@ 38

