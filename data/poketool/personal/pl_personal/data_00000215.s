.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 55, 95, 55, 115, 35, 75, DARK, ICE, 60, 132, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), GRIP_CLAW, QUICK_CLAW, 127, 20, 35, 3, EGGGROUP_FIELD, EGGGROUP_FIELD, INNER_FOCUS, KEEN_EYE, 0, 132, 0, 0xec533e69, 0x42a13f80, 0xd25f7483, 2