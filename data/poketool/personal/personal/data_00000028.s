.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 75, 100, 110, 65, 45, 55, GROUND, GROUND, 90, 163, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, QUICK_CLAW, 127, 20, 70, 0, EGGGROUP_FIELD, EGGGROUP_FIELD, SAND_VEIL, CACOPHONY, 0, 2, 0, 0xce514621, 0x2883ed0, 0x924fae49, 10