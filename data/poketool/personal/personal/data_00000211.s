.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 65, 95, 75, 85, 55, 55, WATER, POISON, 45, 100, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, POISON_BARB, 127, 20, 70, 0, EGGGROUP_WATER2, EGGGROUP_WATER2, POISON_POINT, SWIFT_SWIM, 0, 7, 0, 0xa4133a64, 0x82401e0a, 0x424e2302, 4