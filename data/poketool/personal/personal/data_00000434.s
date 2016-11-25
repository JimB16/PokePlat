.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 63, 63, 47, 74, 41, 41, POISON, DARK, 225, 79, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), NO_ITEM, PECHA_BERRY, 127, 20, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, STENCH, AFTERMATH, 0, 6, 0, 0xac530e30, 0x82013f2c, 0x12466003, 3