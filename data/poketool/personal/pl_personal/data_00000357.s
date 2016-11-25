.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 99, 68, 83, 51, 72, 87, GRASS, FLYING, 200, 169, ((2)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 25, 70, 5, EGGGROUP_MONSTER, EGGGROUP_GRASS, CHLOROPHYLL, SOLAR_POWER, 60, 3, 0, 0x863d4730, 0x22145e80, 0xb2662428, 3