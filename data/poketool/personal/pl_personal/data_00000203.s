.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 80, 65, 85, 90, 65, NORMAL, PSYCHIC, 60, 149, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, PERSIM_BERRY, 127, 20, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, INNER_FOCUS, EARLY_BIRD, 0, 2, 0, 0xb7d38628, 0x310be03, 0x8a763124, 2