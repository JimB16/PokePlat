.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 90, 50, 95, 110, 80, DARK, FIRE, 45, 204, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 35, 5, EGGGROUP_FIELD, EGGGROUP_FIELD, EARLY_BIRD, FLASH_FIRE, 0, 4, 0, 0xa4714e30, 0x52033f2c, 0x8256600a, 2