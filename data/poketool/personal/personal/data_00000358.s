.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 65, 50, 70, 65, 95, 80, PSYCHIC, PSYCHIC, 45, 147, ((0)|(0<<2)|(0<<4)|(0<<6)|(1<<8)|(1<<10)), NO_ITEM, COLBUR_BERRY, 127, 25, 70, 4, 11, 11, LEVITATE, CACOPHONY, 0, 1, 0, 0xb41b8e28, 0x3119f03, 0xa763124, 0