.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 80, 70, 90, 65, 75, POISON, FLYING, 90, 171, ((0)|(0<<2)|(0<<4)|(2<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 15, 70, 0, EGGGROUP_FLYING, EGGGROUP_FLYING, INNER_FOCUS, CACOPHONY, 0, 6, 0, 0xa4174e20, 0x2057f88, 0x23c6200a, 1