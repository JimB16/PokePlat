.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 90, 85, 75, 115, 115, 100, ELECTRIC, ELECTRIC, 3, 216, ((0)|(0<<2)|(0<<4)|(2<<6)|(1<<8)|(0<<10)), NO_ITEM, NO_ITEM, 255, 80, 35, 5, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, PRESSURE, CACOPHONY, 0, 2, 0, 0xadd3c638, 0x3000e13, 0x92461128, 10