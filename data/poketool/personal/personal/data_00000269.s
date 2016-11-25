.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 50, 70, 65, 50, 90, BUG, POISON, 45, 161, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(3<<10)), NO_ITEM, SHED_SHELL, 127, 15, 70, 0, 3, 3, SHIELD_DUST, CACOPHONY, 0, 3, 0, 0xb435c620, 0x22143e88, 0x3462028, 1