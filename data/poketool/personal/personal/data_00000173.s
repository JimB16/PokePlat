.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 25, 28, 15, 45, 55, NORMAL, NORMAL, 150, 37, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(1<<10)), LEPPA_BERRY, MOON_STONE, 191, 10, 140, 4, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, CUTE_CHARM, MAGIC_GUARD, 0, 9, 0, 0xbc7b8624, 0x2801e27, 0x2763124, 0