.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 65, 95, 100, 50, 60, 50, DRAGON, DRAGON, 45, 144, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, DRAGON_FANG, 127, 40, 35, 5, EGGGROUP_DRAGON, EGGGROUP_DRAGON, ROCK_HEAD, CACOPHONY, 0, 8, 0, 0xc4130632, 0x6001ee4, 0x9246a001, 2