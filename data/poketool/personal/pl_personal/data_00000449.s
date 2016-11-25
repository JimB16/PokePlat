.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 68, 72, 78, 32, 38, 42, GROUND, GROUND, 140, 95, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 30, 70, 5, EGGGROUP_FIELD, EGGGROUP_FIELD, SAND_STREAM, CACOPHONY, 0, 5, 0, 0x86510634, 0x2001e50, 0x8246a800, 2