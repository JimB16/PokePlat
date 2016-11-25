.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 80, 90, 110, 110, 130, DRAGON, PSYCHIC, 3, 211, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(3<<10)), NO_ITEM, NO_ITEM, 254, 120, 90, 5, 15, 15, LEVITATE, CACOPHONY, 0, 0, 0, 0xb7bbd63e, 0x7145e93, 0x72763129, 5