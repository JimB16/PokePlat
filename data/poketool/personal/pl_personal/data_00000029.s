.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 55, 47, 52, 41, 40, 40, POISON, POISON, 235, 59, ((1)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 254, 20, 70, 3, EGGGROUP_MONSTER, EGGGROUP_FIELD, POISON_POINT, RIVALRY, 0, 1, 0, 0x8dd33624, 0x2003e8a, 0x924e2001, 2