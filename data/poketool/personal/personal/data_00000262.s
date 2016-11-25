.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 90, 70, 70, 60, 60, DARK, DARK, 127, 128, ((0)|(2<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, PECHA_BERRY, 127, 15, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, INTIMIDATE, QUICK_FEET, 0, 7, 0, 0xac534e30, 0x42013f00, 0x8246600a, 2