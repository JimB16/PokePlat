.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 45, 90, 20, 65, 65, 20, WATER, DARK, 225, 88, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, DEEPSEATOOTH, 127, 20, 35, 5, EGGGROUP_WATER2, EGGGROUP_WATER2, ROUGH_SKIN, CACOPHONY, 90, 0, 0, 0x84133a64, 0x2403f00, 0x42466002, 4