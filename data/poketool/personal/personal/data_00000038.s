.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 73, 76, 75, 100, 81, 100, FIRE, FIRE, 75, 178, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(1<<10)), RAWST_BERRY, RAWST_BERRY, 191, 20, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, FLASH_FIRE, CACOPHONY, 0, 2, 0, 0x8c794638, 0x12021e24, 0x256700a, 0