.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 55, 55, 85, 35, 65, 85, WATER, ROCK, 60, 113, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, HARD_STONE, 191, 20, 70, 4, EGGGROUP_WATER1, EGGGROUP_WATER3, HUSTLE, NATURAL_CURE, 0, 9, 0, 0xbe1bb66c, 0x82401e51, 0xc246a850, 2