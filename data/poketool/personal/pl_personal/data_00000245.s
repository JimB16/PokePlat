.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 100, 75, 115, 85, 90, 115, WATER, WATER, 3, 215, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(2<<10)), NO_ITEM, NO_ITEM, 255, 80, 35, 5, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, PRESSURE, CACOPHONY, 0, 1, 0, 0xac53767c, 0x2400e11, 0x52461088, 14