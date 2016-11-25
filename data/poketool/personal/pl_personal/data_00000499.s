.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 79, 105, 36, 59, 85, BUG, GROUND, 45, 159, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, SILVERPOWDER, 254, 15, 70, 0, EGGGROUP_BUG, EGGGROUP_BUG, ANTICIPATION, CACOPHONY, 0, 7, 0, 0xbe1b4620, 0x200be50, 0x2563028, 0