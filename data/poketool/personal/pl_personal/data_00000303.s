.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 85, 85, 50, 55, 55, STEEL, STEEL, 45, 98, ((0)|(1<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, OCCA_BERRY, 127, 20, 70, 4, 5, 6, HYPER_CUTTER, INTIMIDATE, 0, 4, 0, 0xe4335e21, 0x43881f7c, 0x8666e40a, 2