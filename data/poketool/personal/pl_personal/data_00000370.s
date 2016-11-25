.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 43, 30, 55, 97, 40, 65, WATER, WATER, 225, 110, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), HEART_SCALE, NO_ITEM, 191, 20, 70, 4, EGGGROUP_WATER2, EGGGROUP_WATER2, SWIFT_SWIM, CACOPHONY, 0, 9, 0, 0x841b3264, 0x2401e00, 0x42463000, 4