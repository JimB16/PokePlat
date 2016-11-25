.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 65, 60, 110, 65, 130, 95, ICE, ICE, 45, 196, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 35, 35, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, SNOW_CLOAK, SNOW_CLOAK, 0, 1, 0, 0xac537674, 0x2001e00, 0x82462088, 2