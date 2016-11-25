.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 55, 84, 105, 52, 114, 75, WATER, WATER, 60, 178, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, DEEPSEASCALE, 127, 20, 70, 1, EGGGROUP_WATER1, EGGGROUP_WATER1, SWIFT_SWIM, CACOPHONY, 0, 9, 0, 0xb41b7264, 0x2401e00, 0x42463008, 4