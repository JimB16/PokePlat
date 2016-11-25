.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 50, 100, 50, 100, 200, ICE, ICE, 3, 216, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(3<<10)), NO_ITEM, NO_ITEM, 255, 80, 35, 5, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, CLEAR_BODY, CACOPHONY, 0, 1, 0, 0xc79b7261, 0x83880e42, 0x86469198, 10