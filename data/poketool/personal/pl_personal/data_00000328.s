.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 45, 100, 45, 10, 45, 45, GROUND, GROUND, 255, 73, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, SOFT_SAND, 127, 20, 70, 3, EGGGROUP_BUG, EGGGROUP_BUG, HYPER_CUTTER, ARENA_TRAP, 0, 5, 0, 0x8e354620, 0x2001e50, 0x8246a000, 2