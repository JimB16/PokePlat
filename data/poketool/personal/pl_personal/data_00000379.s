.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 80, 75, 150, 50, 75, 150, STEEL, STEEL, 3, 215, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, NO_ITEM, 255, 80, 35, 5, 15, 15, CLEAR_BODY, CACOPHONY, 0, 7, 0, 0xc79b4621, 0x83880ed2, 0x86469919, 10