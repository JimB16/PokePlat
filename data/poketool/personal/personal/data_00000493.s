.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 120, 120, 120, 120, 120, 120, NORMAL, NORMAL, 3, 255, ((3)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 255, 120, 0, 5, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, MULTITYPE, CACOPHONY, 0, 7, 0, 0xf7fff77e, 0x375a0eff, 0xfe7fddef, 15