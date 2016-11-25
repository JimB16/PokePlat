.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 45, 63, 37, 95, 65, 55, ELECTRIC, ELECTRIC, 45, 106, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), NO_ITEM, ELECTIRIZER, 63, 25, 70, 0, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, STATIC, CACOPHONY, 0, 130, 0, 0xd5938221, 0x3803e02, 0x2462120, 2