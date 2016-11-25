.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 64, 66, 68, 50, 81, 76, WATER, WATER, 45, 143, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 20, 70, 3, EGGGROUP_WATER1, EGGGROUP_FIELD, TORRENT, CACOPHONY, 0, 1, 0, 0xcc133264, 0x2c01ec0, 0xd2e62801, 7