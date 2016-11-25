.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 49, 55, 42, 85, 42, 37, NORMAL, NORMAL, 190, 71, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), NO_ITEM, CHERI_BERRY, 191, 20, 70, 4, EGGGROUP_FIELD, EGGGROUP_FIELD, LIMBER, OWN_TEMPO, 0, 7, 0, 0xadd30e24, 0x2013f82, 0x13563023, 0