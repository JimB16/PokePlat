.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 85, 49, 60, 60, 49, ELECTRIC, ELECTRIC, 120, 117, ((0)|(2<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 100, 3, EGGGROUP_FIELD, EGGGROUP_FIELD, RIVALRY, INTIMIDATE, 0, 1, 0, 0x85d38230, 0x3003e02, 0x82462120, 0