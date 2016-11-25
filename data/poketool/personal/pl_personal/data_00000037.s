.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 38, 41, 40, 65, 50, 65, FIRE, FIRE, 190, 63, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), RAWST_BERRY, RAWST_BERRY, 191, 20, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, FLASH_FIRE, CACOPHONY, 0, 5, 0, 0x8c590630, 0x12021e24, 0x2467002, 0