.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 65, 60, 110, 130, 75, GHOST, POISON, 45, 190, ((0)|(0<<2)|(0<<4)|(0<<6)|(3<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 3, EGGGROUP_AMORPHOUS, EGGGROUP_AMORPHOUS, LEVITATE, CACOPHONY, 0, 6, 0, 0xf5974e21, 0xda99bf08, 0x8a5e700b, 2