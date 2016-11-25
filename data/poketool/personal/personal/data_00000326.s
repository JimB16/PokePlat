.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 45, 65, 80, 90, 110, PSYCHIC, PSYCHIC, 60, 164, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(2<<10)), NO_ITEM, TANGA_BERRY, 127, 20, 70, 4, 5, 5, THICK_FAT, OWN_TEMPO, 0, 6, 0, 0xf453ce29, 0xb99bf03, 0xa76312e, 0