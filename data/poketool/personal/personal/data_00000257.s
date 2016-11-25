.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 120, 70, 80, 110, 70, FIRE, FIGHTING, 45, 209, ((0)|(3<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 20, 70, 3, EGGGROUP_FIELD, EGGGROUP_FIELD, BLAZE, CACOPHONY, 0, 0, 0, 0xce3146b1, 0x128a1ee4, 0x924ea449, 10