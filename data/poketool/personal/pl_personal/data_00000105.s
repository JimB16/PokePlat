.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 80, 110, 45, 50, 80, GROUND, GROUND, 75, 124, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, THICK_CLUB, 127, 20, 70, 0, EGGGROUP_MONSTER, EGGGROUP_MONSTER, ROCK_HEAD, LIGHTNING_ROD, 0, 5, 0, 0xce517621, 0x2a83ef4, 0x8246ac48, 10