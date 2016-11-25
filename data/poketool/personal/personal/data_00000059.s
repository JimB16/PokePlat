.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 90, 110, 80, 95, 100, 80, FIRE, FIRE, 75, 213, ((0)|(2<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), RAWST_BERRY, RAWST_BERRY, 63, 20, 70, 5, 5, 5, INTIMIDATE, FLASH_FIRE, 0, 5, 0, 0x8c714630, 0x16023ea4, 0x82462008, 10