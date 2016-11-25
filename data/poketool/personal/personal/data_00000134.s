.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 130, 65, 60, 65, 110, 95, WATER, WATER, 45, 196, ((2)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 35, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, WATER_ABSORB, WATER_ABSORB, 0, 1, 0, 0xac537674, 0x2401e00, 0xc2462008, 6