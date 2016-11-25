.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 45, 50, 70, 80, 80, BUG, FLYING, 45, 160, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(1<<10)), NO_ITEM, SILVERPOWDER, 127, 15, 70, 0, EGGGROUP_BUG, EGGGROUP_BUG, COMPOUND_EYES, CACOPHONY, 0, 8, 0, 0xb43f4620, 0x2214be80, 0x3563028, 1