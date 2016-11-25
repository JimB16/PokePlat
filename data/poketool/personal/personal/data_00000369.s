.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 100, 90, 130, 55, 45, 65, WATER, ROCK, 25, 198, ((1)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, DEEPSEASCALE, 31, 40, 70, 5, EGGGROUP_WATER1, EGGGROUP_WATER2, SWIFT_SWIM, ROCK_HEAD, 0, 7, 0, 0x861b726c, 0x2401e50, 0x4246b858, 6