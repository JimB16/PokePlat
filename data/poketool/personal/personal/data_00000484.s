.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 90, 120, 100, 100, 150, 120, WATER, DRAGON, 30, 220, ((0)|(0<<2)|(0<<4)|(0<<6)|(3<<8)|(0<<10)), NO_ITEM, NO_ITEM, 255, 120, 0, 5, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, PRESSURE, CACOPHONY, 0, 6, 0, 0xc79b76f7, 0x6c80ef6, 0xda4691c9, 2