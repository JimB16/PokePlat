.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 70, 70, 70, 90, 100, WATER, GRASS, 45, 181, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(3<<10)), NO_ITEM, NO_ITEM, 127, 15, 70, 3, EGGGROUP_WATER1, EGGGROUP_GRASS, SWIFT_SWIM, RAIN_DISH, 0, 3, 0, 0xc4377765, 0xa983e00, 0xc2662428, 14