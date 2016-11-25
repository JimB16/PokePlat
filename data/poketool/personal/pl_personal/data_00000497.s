.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 70, 160, 90, 70, 160, PSYCHIC, PSYCHIC, 3, 215, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, NO_ITEM, 255, 120, 0, 5, 15, 15, PRESSURE, CACOPHONY, 0, 0, 0, 0xf5bbde2d, 0xb998fc3, 0x9e7e99ac, 2