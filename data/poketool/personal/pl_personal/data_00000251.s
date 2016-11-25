.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 100, 100, 100, 100, 100, 100, PSYCHIC, GRASS, 45, 64, ((3)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), LUM_BERRY, LUM_BERRY, 255, 120, 100, 3, 15, 15, NATURAL_CURE, CACOPHONY, 0, 3, 0, 0xb43fc62c, 0x23908e93, 0x1b761d28, 0