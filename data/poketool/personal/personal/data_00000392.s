.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 76, 104, 71, 108, 104, 71, FIRE, FIGHTING, 45, 209, ((0)|(1<<2)|(0<<4)|(1<<6)|(1<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 20, 70, 3, EGGGROUP_FIELD, EGGGROUP_HUMANLIKE, BLAZE, CACOPHONY, 0, 5, 0, 0xce714eb9, 0x128a1fe4, 0x936eac49, 10