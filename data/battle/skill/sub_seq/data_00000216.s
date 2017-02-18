.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3a 0x11, 0x2, 0x37, 0x2b
	Cmd_3a 0x7, 0x1, 0x37, 0x2b
	ChangePkmnBattleData Store, Target_2, PkmnBattleData_Item, NO_ITEM
	end
@ 40

@ end_0x40
